import { useState, useEffect, useContext, createContext } from 'react';
import styled from 'styled-components';

interface IHistoryContext {
  history: History, 
  currentPath: string, 
  setCurrentPath: React.Dispatch<React.SetStateAction<string>>
}
interface IRoute {
  path: string, 
  component: () => React.ReactNode, 
  exact?: boolean
}
interface ILink {
  to: string,
  children: React.ReactNode
}

const HistoryContext = createContext<IHistoryContext|null>(null);

const BrowserRouter = ({...props}) => {
  const [currentPath, setCurrentPath] = useState<string>('');
  const history = window.history;

  useEffect(() => {
    if (window.location.pathname === "/") {
      setCurrentPath(`/`);
      return;
    }
    const firstPath = window.location.pathname.split("/")[1];
    setCurrentPath(`/${firstPath}`);

    window.addEventListener("popstate", (e) => {
      // var style = document.querySelector(".view").style;
      // style.backgroundColor = event.state.color;
      setCurrentPath(`/${e}`);
  });
  }, [currentPath]);

  return (
    <HistoryContext.Provider value={{history, currentPath, setCurrentPath}}>
      {props.children}
    </HistoryContext.Provider>
  )
}

const Switch = ({...props}) => {

  return (
    <>
      {props.children}
    </>
  )
}

const Route = ({path, component, exact}: IRoute) => {
  const BrowserContext = useContext(HistoryContext)!;
  
  useEffect(() => {
    console.log("Route", path, BrowserContext.currentPath, BrowserContext.currentPath === path )
  });
  
  if (!BrowserContext.currentPath) return <></>;
  return (
    <>
      {
        BrowserContext.currentPath === path 
        && component()
      }
    </>
  )
}

const Link = ({ to, children, ...props }: ILink) => {
  // 무슨 상태를 저장?
  const BrowserContext = useContext(HistoryContext)!;

  const handleLinkClick = () => {
    history.pushState({ state: '' }, "", to);
    BrowserContext.setCurrentPath(to);
  }
  return (
    <LinkButton {...props} onClick={handleLinkClick}> {children} </LinkButton>
  )
}

// 리셋버튼으로 바꾼다.
const LinkButton = styled.div`
  cursor: pointer;
`

export { BrowserRouter, Switch, Route, Link };
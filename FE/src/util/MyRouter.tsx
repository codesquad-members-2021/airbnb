import React, { useState, useEffect, useContext, createContext } from 'react';
import styled from 'styled-components';

interface IHistoryContext {
  history: History, 
  currentPath: string, 
  setCurrentPath: React.Dispatch<React.SetStateAction<string>>
}
interface IRoute {
  path: string, 
  component: () => JSX.Element, 
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
  
  if (!BrowserContext.currentPath) return <></>;
  return (
    <>
      {
        BrowserContext.currentPath === path 
        && React.createElement(component) 
      } 
      {/* 
        react-router-dom에서 create를 함. 
        그냥 render를 하면 hooks가 겹쳐서 WARN이 난다.
        */}
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
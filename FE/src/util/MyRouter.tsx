import React, { useState, useEffect, useContext, createContext } from 'react';

const HistoryContext = createContext(null);

// for test
// const withRotuer = ({...props}) => {
  
//   const [location, setLocation] = useState(null);
  
//   useEffect(() => {
//     /*
//       {
//         key: 'ac3df4', // not with HashHistory!
//         pathname: '/somewhere',
//         search: '?some=search-string',
//         hash: '#howdy',
//         state: {
//           [userDefined]: true
//         }
//       }

//     */
//     const a = new URLSearchParams(window.location.search)
//     const currentLocation = window.location;
//     currentLocation

//     setLocation({
//       pathname: currentLocation.pathname
//     })
//   }, [])
  
//   return (
//     <>
//       {props.children}
//     </>
//   )
// }

const BrowserRouter = ({...props}) => {
  const [currentPath, setCurrentPath] = useState(null);
  const history = window.history;

  useEffect(() => {
    if (window.location.pathname === "/") {
      setCurrentPath(`/`);
      return;
    }
    const firstPath = window.location.pathname.split("/")[1];
    setCurrentPath(`/${firstPath}`);
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

const Route = ({path, component, exact, ...props}) => {
  const BrowserContext = useContext(HistoryContext);
  
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
      {/* {...props.children} */}
    </>
  )
}

const Link = () => {}

export { BrowserRouter, Switch, Route, Link };
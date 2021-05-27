import { useEffect, useState, useContext, createContext } from 'react';

const HistoryContext = createContext();

export const BrowserRouter = (props) => {
    const [currentPath, setCurrentPath] = useState();
    const history = window.history;

    useEffect(() => {
        //popstate 이벤트 등록.
        //setCurrentPath 실행
        window.addEventListener('popstate', (e) => setCurrentPath(e.state));
    }, []);

    return (
        <HistoryContext.Provider
            value={{ history, currentPath, setCurrentPath }}
        >
            {props.children}
        </HistoryContext.Provider>
    );
};

export const Route = ({ path, component, /*children*/ }) => {
    const { currentPath } = useContext(HistoryContext);

    //useContext 를 사용해서 currentPath를 얻어오고 path와 일치하는치 확인 후 렌더링
    return (currentPath === path) && component && component();
};

//Switch 있으나 마나~
export const Switch = (props) => {
    return <>{props.children}</>;
};

export const Link = ({ data = null, to, children }) => {
    //HistoryContext를 useContext 로 가져오기.
    //anchor 태그를 클릭하면, setCurrentPath 를 실행하고, pushState도 실행
    const { history, setCurrentPath } = useContext(HistoryContext);

    const onLinkClick = (e) => {
        e.preventDefault();

        setCurrentPath(to);
        history.pushState(data, children, to);
    };

    return (
        <a href={to} onClick={onLinkClick}>
            {children}
        </a>
    );
};

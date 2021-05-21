import styled from "styled-components";
// import {BrowserRouter as Router, Switch} from "react-router-dom";
import Header from "./components/main/header/Header";
import Main from "./components/main/Main";

function App() {
	const toggleModals = (e: any): void => {
		// e.stopPropagation();
		console.log("app clicked");
	};
	return (
		<>
			<MainWrapper onClick={toggleModals}>
				<Header />
				<Main />
			</MainWrapper>
		</>
	);
}

export default App;

const MainWrapper = styled.div`
	background: url("/hero.jpg") no-repeat;
	background-size: 1920px 75%;
	min-width: 1280px;
	min-height: 1280px;
	padding: 30px 100px;
`;

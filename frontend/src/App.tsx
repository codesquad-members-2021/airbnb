import Header from "./components/main/header/Header";
import Main from "./components/main/Main";
import styled from "styled-components";

function App() {
	return (
		<div>
			<MainWrapper>
				<Header />
				<Main />
			</MainWrapper>
		</div>
	);
}

export default App;

const MainWrapper = styled.div`
	background: url("/hero.jpg") no-repeat;
	background-size: 1920px 75%;
	min-width: 1280px;
	min-height: 1280px;
	padding: 30px 200px;
`;

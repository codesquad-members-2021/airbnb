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
	background: url("/hero.jpg") no-repeat center;
	background-size: cover;
	min-width: 2560px;
	min-height: 1280px;
`;

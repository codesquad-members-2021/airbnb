import { useContext } from "react";
import styled from "styled-components";
import { ResultContext } from "../../config/ResultContextProvider";
import Logo from "./Logo";
import Menu from "./Menu";
import MyPage from "./MyPage";
import SearchBar from "./SearchBar/SearchBar";

const Header = () => {
	const { isResultOn, isSearching, isModalOn } = useContext(ResultContext);
	return (
		<HeaderWrapper isResultOn={isResultOn} isSearching={isSearching} isModalOn={isModalOn}>
			<Logo />
			<Menu />
			<MyPage />
			<SearchBar />
		</HeaderWrapper>
	);
};

const HeaderWrapper = styled.div<{ isResultOn: boolean; isSearching: boolean; isModalOn: boolean }>`
	position: ${({ isResultOn }) => (isResultOn ? "absolute" : "relative")};
	width: ${({ isResultOn }) => (isResultOn ? "100%" : "1440px")};
	height: ${({ isSearching }) => (isSearching ? "192px" : "94px")};
	filter: ${({ isModalOn }) => (isModalOn ? "brightness(60%)" : "")};
	transform: ${({ isResultOn }) => (isResultOn ? "translateX(-50%)" : "")};
	background: ${({ isResultOn }) => (isResultOn ? "#FFF" : "")};
	display: flex;
	justify-content: space-between;
	align-items: flex-start;
	z-index: 1;
`;

export default Header;

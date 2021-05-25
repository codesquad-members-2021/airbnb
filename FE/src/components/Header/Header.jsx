import { useContext } from "react";
import styled from "styled-components";
import { MainContext } from "../../config/MainContextProvider";
import Logo from "./Logo";
import Menu from "./Menu";
import MyPage from "./MyPage";
import SearchBar from "./SearchBar/SearchBar";

const Header = () => {
	const { isResult, isSearchBarFocused } = useContext(MainContext);
	return (
		<HeaderWrapper isResult={isResult} isSearchBarFocused={isSearchBarFocused}>
			<Logo />
			<Menu />
			<MyPage />
			<SearchBar />
		</HeaderWrapper>
	);
};

const HeaderWrapper = styled.div`
	position: ${({ isResult }) => (isResult ? "absolute" : "relative")};
	width: ${({ isResult }) => (isResult ? "100%" : "1440px")};
	height: ${({ isSearchBarFocused }) => (isSearchBarFocused ? "192px" : "94px")};
	left: ${({ isResult }) => (isResult ? "0px" : "")};
	background: ${({ isResult }) => (isResult ? "#FFF" : "")};
	display: flex;
	justify-content: space-between;
	align-items: flex-start;
	z-index: 1;
`;

export default Header;

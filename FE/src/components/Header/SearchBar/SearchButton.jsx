import { useContext } from "react";
import styled from "styled-components";
import { MainContext } from "../../../config/MainContextProvider";

const SearchButton = () => {
	const { isResult, setResult, isSearchBarFocused } = useContext(MainContext);
	return (
		<SearchButtonWrapper isSearchBarFocused={isSearchBarFocused} isResult={isResult} onClick={() => setResult(true)}>
			<Glass />
			{isSearchBarFocused && <SearchButtonContent>검색</SearchButtonContent>}
		</SearchButtonWrapper>
	);
};

const Glass = () => (
	<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
		<path
			d="M11 19C15.4183 19 19 15.4183 19 11C19 6.58172 15.4183 3 11 3C6.58172 3 3 6.58172 3 11C3 15.4183 6.58172 19 11 19Z"
			stroke="white"
			strokeWidth="2"
			strokeLinecap="round"
			strokeLinejoin="round"
		/>
		<path d="M21 20.9999L16.65 16.6499" stroke="white" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
	</svg>
);

const SearchButtonWrapper = styled.div`
	position: absolute;
	width: ${({ isSearchBarFocused }) => (isSearchBarFocused ? "90px" : "40px")};
	height: 40px;
	right: ${({ isResult, isSearchBarFocused }) => (!isResult || isSearchBarFocused ? "18px" : "4px")};
	top: ${({ isResult, isSearchBarFocused }) => (!isResult || isSearchBarFocused ? "18px" : "4px")};
	display: flex;
	justify-content: center;
	align-items: center;
	background: #e84c60;
	border-radius: 30px;
	z-index: 1;
`;
const SearchButtonContent = styled.div`
	font-weight: bold;
	font-size: 18px;
	line-height: 26px;
	text-transform: uppercase;
	color: #fff;
	margin-left: 8px;
	margin-right: 4px;
`;

export default SearchButton;

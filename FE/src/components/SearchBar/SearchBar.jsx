import styled from "styled-components";
import Period from "./Period";
import Price from "./Price";
import Personnel from "./Personnel";
import SearchButton from "./SearchButton";

const SearchBar = () => (
	<SearchBarWrapper>
		<Period />
		<SearchButton />
		<Line />
		<Price />
		<Line />
		<Personnel />
	</SearchBarWrapper>
);

const SearchBarWrapper = styled.div`
	position: absolute;
	top: 110px;
	left: 262px;
	width: 916px;
	height: 76px;
	display: flex;
	align-items: center;
	background: #fff;
	border: 1px solid #bdbdbd;
	border-radius: 60px;
`;

const Line = styled.div`
	width: 1px;
	height: 44px;
	background: #e0e0e0;
	margin-left: 24px;
`;

export default SearchBar;

import styled from "styled-components";
import SearchButton from "./SearchButton";

const SearchBar = () => (
	<SearchBarWrapper>
		<SearchButton />
	</SearchBarWrapper>
);

const SearchBarWrapper = styled.div`
	position: absolute;
	top: 110px;
	left: 262px;
	width: 916px;
	height: 76px;
	background: #fff;
	border: 1px solid #bdbdbd;
	border-radius: 60px;
`;

export default SearchBar;

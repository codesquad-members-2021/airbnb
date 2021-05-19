import styled from "styled-components";
import Period from "./Period/Period";
import Price from "./Price/Price";
import Personnel from "./Personnel/Personnel";
import SearchButton from "./SearchButton";
import { useEffect, useRef, useState } from "react";

const SearchBar = () => {
	const [isFocus, setFocus] = useState(false);
	const currentDOM = useRef();

	useEffect(() => {
		document.addEventListener("click", (e) => {
			if (currentDOM.current && !currentDOM.current.contains(e.target)) setFocus(() => false);
		});
	});

	return (
		<SearchBarWrapper ref={currentDOM} onClick={() => setFocus(() => true)}>
			<Period />
			<SearchButton isFocus={isFocus} />
			<Line />
			<Price />
			<Line />
			<Personnel />
		</SearchBarWrapper>
	);
};

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

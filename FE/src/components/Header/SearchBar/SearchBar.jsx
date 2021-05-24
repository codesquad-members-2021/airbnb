import styled from "styled-components";
import Period from "./Period/Period";
import Price from "./Price/Price";
import Personnel from "./Personnel/Personnel";
import SearchButton from "./SearchButton";
import { useContext, useEffect, useRef } from "react";
import { MainContext } from "../../../config/MainContextProvider";
import { SearchBarContext } from "../../../config/SearchBarContextProvider";
import addComma from "../../../util/addComma"

const SearchBar = () => {
	const currentDOM = useRef();

	const { isResult, isSearchBarFocused, setSearchBarFocused } = useContext(MainContext);
	const { start, end, min, max, priceData, man, kid, baby } = useContext(SearchBarContext);
	const { unit, minimumPrice } = priceData;

	useEffect(() => {
		const blur = ({ target }) => {
			if (currentDOM.current && !currentDOM.current.contains(target)) setSearchBarFocused(false);
		};
		document.addEventListener("click", blur);
		return () => document.removeEventListener("click", blur);
	});

	return (
		<SearchBarWrapper isActivated={!isResult || isSearchBarFocused} ref={currentDOM} onClick={() => setSearchBarFocused(true)}>
			{!isResult || isSearchBarFocused ? (
				<>
					<Period />
					<SearchButton isSearchBarFocused={isSearchBarFocused} />
					<LineMain />
					<Price />
					<LineMain />
					<Personnel />
				</>
			) : (
				<>
					<ContentResult>{`${start.slice(5)} - ${end.slice(5)}`}</ContentResult>
					<LineResult />
					<ContentResult>{`₩${addComma(minimumPrice + min * unit)} ~ ₩${addComma(minimumPrice + (max - 20) * unit)}`}</ContentResult>
					<LineResult />
					<ContentResult>{`게스트 ${man + kid}명, 유아${baby}명`}</ContentResult>
					<SearchButton isSearchBarFocused={isSearchBarFocused} />
				</>
			)}
		</SearchBarWrapper>
	);
};

const SearchBarWrapper = styled.div`
	position: absolute;
	top: ${({ isActivated }) => (isActivated ? "90px" : "23px")};
	left: 50%;
	transform: translateX(-50%);
	width: ${({ isActivated }) => (isActivated ? "916px" : "410px")};
	height: ${({ isActivated }) => (isActivated ? "76px" : "48px")};
	display: flex;
	align-items: center;
	background: #fff;
	border: 1px solid #bdbdbd;
	border-radius: 60px;
`;
const LineMain = styled.div`
	width: 1px;
	height: 44px;
	background: #e0e0e0;
	margin-left: 24px;
`;
const ContentResult = styled.div`
	font-size: 12px;
	line-height: 17px;
	color: #010101;
	margin-left: 14px;
`;
const LineResult = styled.div`
	width: 1px;
	height: 20px;
	background: #e0e0e0;
	margin-left: 14px;
`;

export default SearchBar;

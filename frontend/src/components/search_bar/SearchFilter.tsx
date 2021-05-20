import { useState } from "react";
import styled from "styled-components";
import { ReactComponent as SearchIcon } from "./../../icons/search.svg";
import parseByType from "../../utils/parseByType";
import LocationModal from "../modals/location/LocationModal";
import CalendarModal from "../modals/calendar/CalendarModal";
import FeeModal from "../modals/fee/FeeModal";
import GuestModal from "../modals/guest/GuestModal";
import { SearchFilterInterface } from "./../../utils/interfaces";

export default function SearchFilter({ type, input, isEnd, placeholder, isCalendarModalOn, setIsCalendarModalOn, isFeeModalOn, setIsFeeModalOn, isGuestModalOn, setIsGuestModalOn, isLocationModalOn, setIsLocationModalOn }: SearchFilterInterface) {
	const [inplaceHolder, setInplaceHolder] = useState(placeholder);

	const handleSearchClick = (): void => {
		console.log("search");
	};

	const handleOnClick = (type: string): void => {
		if (type === "LOCATION") isLocationModalOn ? setIsLocationModalOn(false) : setIsLocationModalOn(true);
		if (type === "CHECKIN" || type === "CHECKOUT") isCalendarModalOn ? setIsCalendarModalOn(false) : setIsCalendarModalOn(true);
		if (type === "FEE") isFeeModalOn ? setIsFeeModalOn(false) : setIsFeeModalOn(true);
		if (type === "GUEST") isGuestModalOn ? setIsGuestModalOn(false) : setIsGuestModalOn(true);
	};

	return (
		<>
			<StyleFilter isEnd={isEnd} onClick={() => handleOnClick(type)}>
				<SearchWrapper isEnd={isEnd}>
					{parseByType("title", type)}
					{input && <SearchLocationStyle placeholder={input}></SearchLocationStyle>}
					{placeholder && <div>{inplaceHolder}</div>}
				</SearchWrapper>
			</StyleFilter>
			{isEnd && (
				<StyleSearchBtn onClick={handleSearchClick}>
					<SearchIcon stroke="#FFFFFF" />
				</StyleSearchBtn>
			)}
			{isLocationModalOn && <LocationModal type={type} setInplaceHolder={setInplaceHolder} />}
			{isCalendarModalOn && <CalendarModal type={type} setInplaceHolder={setInplaceHolder} />}
			{isFeeModalOn && <FeeModal type={type} setInplaceHolder={setInplaceHolder} />}
			{isGuestModalOn && <GuestModal type={type} setInplaceHolder={setInplaceHolder} />}
		</>
	);
}

const StyleFilter = styled.button<{ isEnd: boolean }>`
	font-family: "Noto Sans KR", sans-serif;
	width: ${(props) => (props.isEnd ? `${40}%` : `${25}%`)};
	height: 100%;
	border-radius: 60px;
	background-color: #ffffff;
	:hover {
		background-color: #e0e0e0;
	}
`;

const SearchWrapper = styled.div<{ isEnd: boolean }>`
	height: 44px;
	display: flex;
	flex-direction: column;
	align-items: flex-start;
	justify-content: space-around;
	border-right: ${(props) => (props.isEnd ? "none" : "1px solid #E0E0E0")};
	margin-left: 20px;
`;

const SearchLocationStyle = styled.input`
	border: none;
`;

const StyleSearchBtn = styled.button`
	position: absolute;
	width: 50px;
	height: 50px;
	left: 93%;
	background-color: #e84c60;
	border-radius: 50%;
	transition: background-color 0.5s;
	:hover {
		background-color: #d12038;
	}
`;

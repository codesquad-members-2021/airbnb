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

	const handleSearchClick = (e: any): void => {
		console.log("search");
		e.stopPropagation();
	};

	const handleOnClick = (e: any, type: string): void => {
		// e.stopPropagation();
		console.log("search filter clicked");
		if (type === "LOCATION") setIsLocationModalOn((isLocationModalOn: boolean) => !isLocationModalOn);
		if (type === "CHECKIN" || type === "CHECKOUT") setIsCalendarModalOn((isCalendarModalOn: boolean) => !isCalendarModalOn);
		if (type === "FEE") setIsFeeModalOn((isFeeModalOn: boolean) => !isFeeModalOn);
		if (type === "GUEST") setIsGuestModalOn((isGuestModalOn: boolean) => !isGuestModalOn);
	};

	return (
		<SearchFilterWrapper onClick={(e) => handleOnClick(e, type)}>
			<StyleFilter isEnd={isEnd}>
				<SearchWrapper isEnd={isEnd}>
					{parseByType("title", type)}
					{input && <SearchLocationStyle placeholder={input} />}
					{placeholder && <div>{inplaceHolder}</div>}
				</SearchWrapper>
			</StyleFilter>
			{isEnd && (
				<StyleSearchBtn onClick={(e) => handleSearchClick(e)}>
					<SearchIcon stroke="#FFFFFF" />
				</StyleSearchBtn>
			)}
			{isLocationModalOn && <LocationModal className="location-modal" type={type} setInplaceHolder={setInplaceHolder} isActive={isLocationModalOn} setModalOn={setIsLocationModalOn} />}
			{isCalendarModalOn && <CalendarModal className="calendar-modal" type={type} setInplaceHolder={setInplaceHolder} isActive={isCalendarModalOn} setModalOn={setIsCalendarModalOn} />}
			{isFeeModalOn && <FeeModal type={type} className="fee-modal" setInplaceHolder={setInplaceHolder} isActive={isFeeModalOn} setModalOn={setIsFeeModalOn} />}
			{isGuestModalOn && <GuestModal type={type} className="guest-modal" setInplaceHolder={setInplaceHolder} isActive={isGuestModalOn} setModalOn={setIsGuestModalOn} />}
		</SearchFilterWrapper>
	);
}

const SearchFilterWrapper = styled.div`
	display: flex;
	height: 100%;
	align-items: center;
`;

const StyleFilter = styled.button<{ isEnd: boolean }>`
	font-family: "Noto Sans KR", sans-serif;
	display: flex;
	justify-content: flex-start;
	align-items: center;
	width: 210px;
	height: 100%;
	border-radius: 60px;
	background-color: #ffffff;
	:hover {
		background-color: #e0e0e0;
	}
`;

const SearchWrapper = styled.div<{ isEnd: boolean }>`
	width: 100%;
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
	left: 107%;
	background-color: #e84c60;
	border-radius: 50%;
	transition: background-color 0.5s;
	:hover {
		background-color: #d12038;
	}
`;

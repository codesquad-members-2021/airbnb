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

	const handleOnClick = (e: any, type: string): void => {
		// e.stopPropagation();
		console.log("search filter clicked");
		if (type === "LOCATION") isLocationModalOn ? setIsLocationModalOn(false) : setIsLocationModalOn(true);
		if (type === "CHECKIN" || type === "CHECKOUT") isCalendarModalOn ? setIsCalendarModalOn(false) : setIsCalendarModalOn(true);
		if (type === "FEE") isFeeModalOn ? setIsFeeModalOn(false) : setIsFeeModalOn(true);
		if (type === "GUEST") isGuestModalOn ? setIsGuestModalOn(false) : setIsGuestModalOn(true);
	};

	// document.addEventListener("click", function (e) {
	// 	let target: any = e.currentTarget;
	// 	console.log(target);
	// 	if (target.className === "guest-modal") setIsGuestModalOn(true);
	// 	else if (target.className === "fee-modal") setIsFeeModalOn(true);
	// 	else if (target.className === "calendar-modal") setIsCalendarModalOn(true);
	// 	else if (target.className === "location-modal") setIsLocationModalOn(true);
	// });

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
				<StyleSearchBtn onClick={handleSearchClick}>
					<SearchIcon stroke="#FFFFFF" />
				</StyleSearchBtn>
			)}
			{isLocationModalOn && <LocationModal className="location-modal" type={type} setInplaceHolder={setInplaceHolder} isActive={isLocationModalOn} />}
			{isCalendarModalOn && <CalendarModal className="calendar-modal" type={type} setInplaceHolder={setInplaceHolder} isActive={isCalendarModalOn} />}
			{isFeeModalOn && <FeeModal type={type} className="fee-modal" setInplaceHolder={setInplaceHolder} isActive={isFeeModalOn} />}
			{isGuestModalOn && <GuestModal type={type} className="guest-modal" setInplaceHolder={setInplaceHolder} isActive={isGuestModalOn} />}
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

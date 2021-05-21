import { useState } from "react";
import styled from "styled-components";
import SearchFilter from "./SearchFilter";
import { EmptyInterface } from "./../../utils/interfaces";

export default function SearchBar(props: EmptyInterface) {
	const [isLocationModalOn, setIsLocationModalOn] = useState<boolean>(false);
	const [isCalendarModalOn, setIsCalendarModalOn] = useState<boolean>(false);
	const [isFeeModalOn, setIsFeeModalOn] = useState<boolean>(false);
	const [isGuestModalOn, setIsGuestModalOn] = useState<boolean>(false);

	const handleOnclick = (e: any): void => {
		// e.stopPropagation();
		console.log("search bar clicked");
	};

	return (
		<StyleSearchBar onClick={handleOnclick}>
			<SearchFilter type="LOCATION" input="어디로 여행가세요?" isEnd={false} isLocationModalOn={isLocationModalOn} setIsLocationModalOn={setIsLocationModalOn} />
			<SearchFilter type="CHECKIN" isEnd={false} placeholder={"날짜 입력"} isCalendarModalOn={isCalendarModalOn} setIsCalendarModalOn={setIsCalendarModalOn} />
			<SearchFilter type="CHECKOUT" isEnd={false} placeholder={"날짜 입력"} isCalendarModalOn={isCalendarModalOn} setIsCalendarModalOn={setIsCalendarModalOn} />
			<SearchFilter type="FEE" isEnd={false} placeholder={"금액대 설정"} isFeeModalOn={isFeeModalOn} setIsFeeModalOn={setIsFeeModalOn} />
			<SearchFilter type="GUEST" isEnd={true} placeholder={"게스트 추가"} isGuestModalOn={isGuestModalOn} setIsGuestModalOn={setIsGuestModalOn} />
		</StyleSearchBar>
	);
}

const StyleSearchBar = styled.div`
	display: flex;
	position: absolute;
	align-items: center;
	/* justify-content: space-between; */
	width: 916px;
	height: 76px;
	top: 110px;
	left: 500px;
	border-radius: 60px;
	background-color: #ffffff;
`;

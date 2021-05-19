import { useState } from "react";
import styled from "styled-components";

const CalendarModal = () => {
	const [currentModifier, setCurrentModifier] = useState([-2, -1, 0, 1, 2, 3]);
	const [containerState, setContainerState] = useState("CENTER");

	const slideEvent = async (type) => {
		const delayedSlide = (delay) =>
			new Promise((res, rej) => {
				setContainerState(() => type);
				setTimeout(() => res(), delay);
			});
		await delayedSlide(400);
		setCurrentModifier((arr) => arr.map((el) => el + (type === "LEFT" ? -2 : 2)));
		setContainerState(() => "CENTER");
	};

	return (
		<CalendarModalWrapper>
			<ShowWindow>
				<Container state={containerState}>
					{currentModifier.map((el) => (
						<Calendar modifier={el} key={el} />
					))}
				</Container>
			</ShowWindow>
			<SlideButton type="LEFT" onClick={() => slideEvent("LEFT")} />
			<SlideButton type="RIGHT" onClick={() => slideEvent("RIGHT")} />
		</CalendarModalWrapper>
	);
};

const makeMonthArray = (year, month) => {
	const firstDay = new Date(year, month, 1).getDay();
	const sumDay = new Date(year, month + 1, 0).getDate();

	const monthArray = [];
	let weekArray = [];
	for (let count = 1 - firstDay; count <= sumDay; count++) {
		if (weekArray.length === 7) {
			monthArray.push(weekArray);
			weekArray = [];
		}
		weekArray.push(count);
	}
	if (weekArray.length > 0) monthArray.push(weekArray);

	return monthArray;
};
const fixMonth = (year, month) => {
	if (0 <= month && month <= 11) return [year, month];
	return month < 0 ? fixMonth(year - 1, month + 12) : fixMonth(year + 1, month - 12);
};

const Calendar = ({ modifier }) => {
	const now = new Date(Date.now());
	const [year, month] = fixMonth(now.getFullYear(), now.getMonth() + modifier);
	const monthArray = makeMonthArray(year, month);
	return (
		<CalendarWrapper>
			<CalendarTitle>{`${year}년 ${month + 1}월`}</CalendarTitle>
			<CalendarBody>
				<Week>
					<tr>
						<th>일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th>토</th>
					</tr>
				</Week>
				<tbody>
					{monthArray.map((el) => (
						<tr key={el}>
							{el.map((v) => (
								<Day date={new Date(year, month, v)} key={v}>
									{v > 0 && v}
								</Day>
							))}
						</tr>
					))}
				</tbody>
			</CalendarBody>
		</CalendarWrapper>
	);
};

const SlideButton = ({ type, onClick }) => (
	<SlideButtonWrapper type={type} onClick={onClick}>
		{type === "LEFT" ? (
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path d="M15 18L9 12L15 6" stroke="#111111" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
			</svg>
		) : (
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path d="M9 18L15 12L9 6" stroke="#111111" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
			</svg>
		)}
	</SlideButtonWrapper>
);

const CalendarModalWrapper = styled.div`
	position: absolute;
	top: 76px;
	width: 916px;
	height: 512px;

	background: #fff;
	box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
	border-radius: 40px;
`;
const ShowWindow = styled.div`
	position: absolute;
	width: 722px;
	height: 383px;
	top: 70px;
	left: 97px;
	overflow: hidden;
`;
const xLocation = {
	LEFT: "translateX(0)",
	CENTER: "translateX(-772px)",
	RIGHT: "translateX(-1545px)",
};
const Container = styled.div`
	position: absolute;
	display: flex;
	transform: ${({ state }) => xLocation[state]};
	transition: transform ${({ state }) => (state === "CENTER" ? "0ms" : "400ms")};
`;
const CalendarWrapper = styled.div`
	width: 336px;
	min-width: 336px;
	height: 383px;
	& + & {
		margin-left: 50px;
	}
`;
const CalendarTitle = styled.div`
	width: 336px;
	height: 23px;
	font-weight: bold;
	font-size: 16px;
	line-height: 23px;
	display: flex;
	justify-content: center;
	color: #010101;
`;
const CalendarBody = styled.table`
	width: 336px;
	margin-top: 24px;
`;
const Week = styled.thead`
	th {
		width: 48px;
		height: 24px;
		font-size: 12px;
		line-height: 17px;
		color: #828282;
	}
`;
const Day = styled.td`
	width: 48px;
	height: 48px;
	font-weight: bold;
	font-size: 12px;
	line-height: 17px;
	text-align: center;
	vertical-align: middle;
	color:${({ date }) => date > Date.now() ? "#333" : "#bdbdbd"}
`;
const SlideButtonWrapper = styled.div`
	position: absolute;
	top: 70px;
	left: ${({ type }) => (type === "LEFT" ? "97px" : "795px")};
	z-index: 1;
`;

export default CalendarModal;

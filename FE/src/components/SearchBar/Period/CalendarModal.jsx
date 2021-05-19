import { useState } from "react";
import styled from "styled-components";
import Calendar from "./Calendar/Calendar"

const CalendarModal = ({ period }) => {
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
						<Calendar modifier={el} period={period} key={el} />
					))}
				</Container>
			</ShowWindow>
			<SlideButton type="LEFT" onClick={() => slideEvent("LEFT")} />
			<SlideButton type="RIGHT" onClick={() => slideEvent("RIGHT")} />
		</CalendarModalWrapper>
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
const SlideButtonWrapper = styled.div`
	position: absolute;
	top: 70px;
	left: ${({ type }) => (type === "LEFT" ? "97px" : "795px")};
	z-index: 1;
`;

export default CalendarModal;

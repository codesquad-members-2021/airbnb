import { useState, useRef, useEffect } from "react";
import styled from "styled-components";
import CalendarModal from "./CalendarModal";
import CloseButton from "../CloseButton";

const Period = () => {
	const [start, setStart] = useState("");
	const [end, setEnd] = useState("");

	const [isOn, setOn] = useState(false);

	const resetEvent = () => {
		setStart(() => "");
		setEnd(() => "");
	};

	const currentDOM = useRef();

	useEffect(() => {
		document.addEventListener("click", (e) => {
			if (currentDOM.current && !currentDOM.current.contains(e.target)) setOn(() => false);
		});
	});

	return (
		<PeriodWrapper ref={currentDOM} onClick={() => setOn(() => true)}>
			<CheckIn value={start} />
			<CheckOut value={end} />
			{isOn && <CalendarModal period={{ start, setStart, end, setEnd }} />}
			{(start || end) && <CloseButton onClick={resetEvent} />}
		</PeriodWrapper>
	);
};

const CheckIn = ({ value }) => (
	<CheckInWrapper>
		<CheckContent>체크인</CheckContent>
		<CheckInput value={value} readOnly />
	</CheckInWrapper>
);
const CheckOut = ({ value }) => (
	<CheckOutWrapper>
		<CheckContent>체크아웃</CheckContent>
		<CheckInput value={value} readOnly />
	</CheckOutWrapper>
);

const PeriodWrapper = styled.div`
	position: relative;
	width: 297px;
	height: 44px;
	display: flex;
	align-items: center;
`;
const CheckInWrapper = styled.div`
	width: 112px;
	height: 44px;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	margin-left: 40px;
`;
const CheckOutWrapper = styled.div`
	width: 160px;
	height: 44px;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	margin-left: 24px;
`;
const CheckContent = styled.div`
	font-weight: bold;
	font-size: 12px;
	line-height: 17px;
	color: #010101;
`;
const CheckInput = styled.input.attrs({
	placeholder: "날짜 입력",
})`
	width: 100%;
	height: 23px;
	padding: 0px;
	font-size: 16px;
	line-height: 23px;
	border: none;
	color: #010101;
`;

export default Period;

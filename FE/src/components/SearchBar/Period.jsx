import styled from "styled-components";
// import CloseButton from "./CloseButton";

const Period = () => (
	<PeriodWrapper>
		<CheckIn />
		<CheckOut />
		{/* <CloseButton /> */}
	</PeriodWrapper>
);

const CheckIn = () => (
	<CheckInWrapper>
		<CheckContent>체크인</CheckContent>
		<CheckInput />
	</CheckInWrapper>
);
const CheckOut = () => (
	<CheckOutWrapper>
		<CheckContent>체크아웃</CheckContent>
		<CheckInput />
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

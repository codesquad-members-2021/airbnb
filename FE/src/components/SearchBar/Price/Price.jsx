import styled from "styled-components";
// import CloseButton from "../CloseButton";

const Price = () => (
	<PriceWrapper>
		<PriceContent>요금</PriceContent>
		<PriceInput />
		{/* <CloseButton /> */}
	</PriceWrapper>
);

const PriceWrapper = styled.div`
	position: relative;
	width: 201px;
	height: 44px;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	margin-left: 24px;
`;
const PriceContent = styled.div`
	font-weight: bold;
	font-size: 12px;
	line-height: 17px;
	color: #010101;
`;
const PriceInput = styled.input.attrs({
	placeholder: "금액대 설정",
})`
	width: 100%;
	height: 23px;
	padding: 0px;
	font-size: 16px;
	line-height: 23px;
	border: none;
	color: #010101;
`;

export default Price;

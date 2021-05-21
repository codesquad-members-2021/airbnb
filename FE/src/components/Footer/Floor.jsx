import styled from "styled-components";
import { floorData,FNBData } from "../../json/data.json";
//prettier-ignore
const Floor = () => (
	<FloorWrapper>
		{floorData.map((el) => <FloorContent key={el} body={el} />)}
		<Line />
		<FNB />
	</FloorWrapper>
);

const FloorContent = ({ body }) => (
	<FloorContentWrapper>
		{body.map((el, i) => <FloorContentMenu key={i}>{el}</FloorContentMenu>)}
	</FloorContentWrapper>
);

const FNB = () => (
	<FNBWrapper>
		{FNBData.map((el, i) => <FNBContent key={i}>{el}</FNBContent>)}
	</FNBWrapper>
);

const FloorWrapper = styled.div`
	position: relative;
	width: 1440px;
	height: 629px;

	display: flex;
	justify-content: center;

	background: #f5f5f7;
	margin-top: 80px;
	color: #333;
`;
const FloorContentWrapper = styled.ul`
	width: 304px;
	height: 413px;
	margin-top: 80px;
	& + & {
		margin-left: 20px;
	}
`;
const FloorContentMenu = styled.li`
	font-size: 16px;
	line-height: 23px;

	margin-bottom: 16px;
	&:nth-child(1) {
		font-weight: bold;
	}
`;
const Line = styled.div`
	position: absolute;
	width: 1280px;
	height: 1px;
	left: 80px;
	top: 541px;

	background: #e0e0e0;
`;
const FNBWrapper = styled.div`
	position: absolute;
	width: 837px;
	height: 23px;
	left: 80px;
	top: 574px;
	display: flex;
	align-items: center;
`;
const FNBContent = styled.div`
	font-size: 16px;
	line-height: 23px;
	color: #333333;
	& + & {
		margin-left: 16px;
	}
	&:nth-child(2n) {
		font-size: 10px;
		line-height: 14px;
	}
`;

export default Floor;

import { useContext } from "react";
import styled from "styled-components";
import { ResultContext } from "../../config/ResultContextProvider";
import { SearchBarContext } from "../../config/SearchBarContextProvider";
import addComma from "../../util/addComma";
import parseDate from "../../util/parseDate";

const ModalCost = () => {
	const { modalData } = useContext(ResultContext);
	const { start, end } = useContext(SearchBarContext);
	const { charge, cleaningRatio, serviceRatio, discountRatio } = modalData;
	const period = (new Date(parseDate(end)) - new Date(parseDate(start))) / 1000 / 60 / 60 / 24 || 1;
	const total = charge * period;
	const result = (total * (100 + cleaningRatio + 1.1 * serviceRatio - (period > 6 ? discountRatio : 0))) / 100;
	return (
		<CostWrapper>
			<ContentWrapper>
				<Content>
					<Title>{`₩${addComma(charge)} x ${period}박`}</Title>
					<Body>₩{addComma(total)}</Body>
				</Content>
				<Content>
					<Title>{discountRatio}% 주 단위 요금 할인</Title>
					<Body>-₩{addComma((total * (period > 6 ? discountRatio : 0)) / 100)}</Body>
				</Content>
				<Content>
					<Title>청소비</Title>
					<Body>₩{addComma((total * cleaningRatio) / 100)}</Body>
				</Content>
				<Content>
					<Title>서비스 수수료</Title>
					<Body>₩{addComma((total * serviceRatio) / 100)}</Body>
				</Content>
				<Content>
					<Title>숙박세와 수수료</Title>
					<Body>₩{addComma((total * serviceRatio) / 1000)}</Body>
				</Content>
			</ContentWrapper>
			<Line />
			<TotalContent>
				<Title>총 합계</Title>
				<Body>₩{addComma(result)}</Body>
			</TotalContent>
			<Charge>
				<ChargeNumber>{`₩${addComma(result/period)}`}</ChargeNumber>
				<ChargeUnit>/ 박</ChargeUnit>
			</Charge>
		</CostWrapper>
	);
};

const CostWrapper = styled.div`
	position: absolute;
	width: 353px;
	left: 24px;
	top: 315px;
`;
const ContentWrapper = styled.div`
	width: 353px;
	height: 147px;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
`;
const Content = styled.div`
	width: 353px;
	height: 23px;
	display: flex;
	justify-content: space-between;
`;
const TotalContent = styled.div`
	width: 353px;
	height: 23px;
	font-weight: bold;
	display: flex;
	justify-content: space-between;
`;
const Title = styled.div`
	font-size: 16px;
	line-height: 23px;
	text-decoration-line: underline;
	color: #333333;
`;
const Body = styled.div`
	font-size: 16px;
	line-height: 23px;
	text-align: right;
	color: #333333;
`;
const Line = styled.div`
	width: 353px;
	height: 1px;
	background: #e0e0e0;
	margin: 16px 0px;
`;
const Charge = styled.div`
	display: flex;
	flex-direction: row;
	align-items: center;

	position: absolute;
	height: 29px;
	top: -291px;
`;
const ChargeNumber = styled.div`
	height: 29px;
	font-weight: bold;
	font-size: 20px;
	line-height: 29px;
	color: #333333;
`;
const ChargeUnit = styled.div`
	height: 20px;
	font-size: 14px;
	line-height: 20px;
	color: #333333;
	margin-left: 4px;
`;

export default ModalCost;

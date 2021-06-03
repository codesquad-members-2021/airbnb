import { useContext } from "react";
import styled from "styled-components";
import { SearchBarContext } from "../../../../config/SearchBarContextProvider";
import Slider from "./Slider";

const PriceModal = ({ average, range }: { average: number; range: string }) => (
	<PriceModalWrapper>
		<Title>가격 범위</Title>
		<Range>{range}</Range>
		<Body>{`평균 1박 요금은 ₩${average} 입니다.`}</Body>
		<Graph />
	</PriceModalWrapper>
);

const Graph = () => {
	const { min, setMin, max, setMax, priceData } = useContext(SearchBarContext);
	const drawGraph = (price: number) => <GraphBar price={price} count={priceData.counts[price]} key={price} min={min} max={max} {...priceData} />;
	return (
		<GraphWrapper>
			<GraphContent>
				{Object.keys(priceData.counts).map((el) => parseInt(el)).map(drawGraph)}
			</GraphContent>
			<Slider value={min} setValue={setMin} />
			<Slider value={max} setValue={setMax} />
		</GraphWrapper>
	);
};

const PriceModalWrapper = styled.div`
	position: absolute;
	width: 473px;
	height: 355px;
	left: 98px;
	top: 76px;
	background: #ffffff;
	box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
	border-radius: 40px;
`;
const Title = styled.div`
	position: absolute;
	top: 52px;
	left: 64px;
	font-weight: bold;
	font-size: 16px;
	line-height: 23px;
	color: #010101;
`;
const Range = styled.div`
	position: absolute;
	top: 91px;
	left: 64px;
	font-size: 18px;
	line-height: 26px;
	color: #333333;
`;
const Body = styled.div`
	position: absolute;
	top: 121px;
	left: 64px;
	font-size: 14px;
	line-height: 20px;
	color: #828282;
`;
const GraphWrapper = styled.div`
	position: absolute;
	width: 345px;
	height: 113px;
	top: 178px;
	left: 64px;
`;
const GraphContent = styled.div`
	position: absolute;
	width: 345px;
	height: 100px;
	display: flex;
	justify-content: center;
	align-items: flex-end;
`;
const GraphBar = styled.div.attrs<{ count: number; maxCount: number; length: number }>(({ count, maxCount, length }) => ({
	style: { width: `${325 / length}px`, height: `${count * (100 / maxCount)}px` },
}))<{ min: number; max: number; unit: number; minimumPrice: number; price: number; count: number }>`
	background: ${({ min, max, unit, minimumPrice, price }) =>
		price >= min * unit + minimumPrice && price <= (max - 20) * unit + minimumPrice ? "#000" : "#aaa"};
`;

export default PriceModal;

import { useEffect, useState } from "react";
import styled from "styled-components";

const PriceModal = () => {
	const [min, setMin] = useState(0);
	const [max, setMax] = useState(341);

	useEffect(() => {
		if (max - min < 20) setMin(() => max - 21);
		if (min < 0) setMin(0);
		if (max < 22) setMax(22);
		if (max > 341) setMax(341);
	}, [min, max]);

	return (
		<PriceModalWrapper>
			<Title>가격 범위</Title>
			<Range>{`${min}  -  ${max}`}</Range>
			<Body>평균 1박 요금은 ₩165,556 입니다.</Body>
			<Graph min={min} setMin={setMin} max={max} setMax={setMax} />
		</PriceModalWrapper>
	);
};

const Graph = ({ min, max, setMin, setMax }) => (
	<GraphWrapper>
		<Slider value={min} setValue={setMin} />
		<Slider value={max} setValue={setMax} />
	</GraphWrapper>
);

const Slider = ({ value, setValue }) => {
	const [start, setStart] = useState();
	const [end, setEnd] = useState(value);
	const [isDown, setDown] = useState(false);

	const mouseDonwHandler = ({ clientX }) => {
		setDown(true);
		setStart(() => clientX);
	};
	const mouseMoveHandler = ({ clientX }) => {
		if (isDown) setValue(() => clientX - start + end);
	};
	const mouseUpHandler = () => {
		setEnd(() => value);
		setDown(false);
	};

	return (
		<SliderWrapper
			value={value}
			onMouseDown={mouseDonwHandler}
			onMouseMove={mouseMoveHandler}
			onMouseUp={mouseUpHandler}
			onMouseLeave={mouseUpHandler}
		>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path
					d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z"
					fill="white"
					stroke="#333333"
					strokeLinecap="round"
					strokeLinejoin="round"
				/>
				<path d="M10 15V9" stroke="#333333" strokeLinecap="round" strokeLinejoin="round" />
				<path d="M14 15V9" stroke="#333333" strokeLinecap="round" strokeLinejoin="round" />
			</svg>
		</SliderWrapper>
	);
};

const PriceModalWrapper = styled.div`
	position: absolute;
	width: 493px;
	height: 355px;
	left: 78px;
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
	width: 365px;
	height: 113px;
	top: 178px;
	left: 64px;
	border: 1px red solid;
`;

// const Runner = styled.img.attrs(({ base, isRunning }) => ({
// 	src: isRunning ? "image/runner_running.png" : "image/runner_waiting.png",
// 	style: baseLocation[base % 4],
// }))``;
const SliderWrapper = styled.div.attrs(({ value }) => ({
	style: { left: `${value}px` },
}))`
	position: absolute;
	bottom: 0px;
`;

export default PriceModal;

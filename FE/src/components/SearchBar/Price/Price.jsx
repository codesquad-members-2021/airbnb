import { useEffect, useState, useRef } from "react";
import styled from "styled-components";
import PriceModal from "./PriceModal";
import CloseButton from "../CloseButton";
import addComma from "../../../util/addComma";

// 현재 데이터 상태 :
// 숙소 최저가 : 50000
// 숙소 최고가 : 200000
// 그래프 x 단위 : 5000
// 그래프 개수 : 30
// 슬라이더 가로 픽셀 : 300등분
const priceDataParser = (data, totalSlide) => {
	const counts = {};
	let maxCount = 0;
	let length = 0;

	const minimumPrice = Math.min(...data);
	const maximumPrice = Math.max(...data);
	const unit = (maximumPrice - minimumPrice) / totalSlide;
	const average = data.length ? Math.round(data.reduce((acc, cur) => acc + cur) / data.length) : 0;

	const getPrice = (price) => Math.floor((price - minimumPrice) / unit) * unit + minimumPrice;

	data.forEach((el) => {
		if (counts[getPrice(el)]) {
			counts[getPrice(el)]++;
			maxCount = maxCount < counts[getPrice(el)] ? counts[getPrice(el)] : maxCount;
		} else {
			counts[getPrice(el)] = 1;
			length++;
		}
	});
	return { counts, maxCount, minimumPrice, maximumPrice, unit, length, average };
};

const Price = () => {
	const [isOn, setOn] = useState(false);

	const [min, setMin] = useState(0);
	const [max, setMax] = useState(321);

	const [data, setData] = useState(priceDataParser([], 300));

	useEffect(() => {
		if (max - min < 20) setMin(() => max - 20);
		if (min < 0) setMin(0);
		if (max < 20) setMax(20);
		if (max > 320) setMax(320);
	}, [min, max]);

	const { minimumPrice, unit } = data;

	const isActivated = Boolean(min !== 0 || max !== 320);

	useEffect(() => {
		fetch(`http://3.37.76.224:8080/houses/charges?checkIn=2021-05-18&checkOut=2021-05-25&latitude=37.566826&longitude=126.9786567`)
			.then((res) => res.json())
			.then((json) => setData(() => priceDataParser(json, 300)))
			.catch((res) => console.log("fetch error : ", res));
	}, []);

	const currentDOM = useRef();

	useEffect(() => {
		const blur = ({ target }) => {
			if (currentDOM.current && !currentDOM.current.contains(target)) setOn(false);
		};
		document.addEventListener("click", blur);
		return () => document.removeEventListener("click", blur);
	}, []);

	const resetEvent = () => {
		setMin(0);
		setMax(321);
	};

	const range = `₩${addComma(minimumPrice + min * unit)} ~ ₩${addComma(minimumPrice + (max - 20) * unit)}`;

	return (
		<PriceWrapper ref={currentDOM} onClick={() => setOn(true)}>
			<PriceContent>요금</PriceContent>
			<PriceInput value={isActivated ? range : ""} readOnly />
			{isOn && <PriceModal min={min} setMin={setMin} max={max} setMax={setMax} range={range} data={data} />}
			{isActivated && <CloseButton onClick={resetEvent} />}
		</PriceWrapper>
	);
};

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

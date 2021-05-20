import { useEffect, useState, useRef } from "react";
import styled from "styled-components";
import PriceModal from "./PriceModal";
import CloseButton from "../CloseButton";

const priceDataParser = (data) => {
	const parsedData = { length: 0, counts: {} };

	data.forEach((el) => (parsedData.counts[el] ? parsedData.counts[el]++ : ((parsedData.counts[el] = 1), parsedData.length++)));

	return parsedData;
};

const Price = () => {
	const [isOn, setOn] = useState(false);

	const [min, setMin] = useState(0);
	const [max, setMax] = useState(341);

	const [data, setData] = useState([]);

	useEffect(() => {
		if (max - min < 20) setMin(() => max - 20);
		if (min < 0) setMin(0);
		if (max < 20) setMax(20);
		if (max > 341) setMax(341);
	}, [min, max]);

	const minimumPrice = Math.min(...data);
	const maximumPrice = Math.max(...data);
	const unit = Math.floor((maximumPrice - minimumPrice) / 321);

	const isActivated = Boolean(min !== 0 || max !== 341);

	useEffect(() => {
		fetch(`http://3.37.76.224:8080/houses/charges`)
			.then((res) => res.json())
			.then((json) => setData(() => json))
			.catch((res) => console.log("fetch error : ", res));
	}, []);

	const currentDOM = useRef();

	useEffect(() => {
		document.addEventListener("click", (e) => {
			if (currentDOM.current && !currentDOM.current.contains(e.target)) setOn(() => false);
		});
	}, []);

	return (
		<PriceWrapper ref={currentDOM} onClick={() => setOn(true)}>
			<PriceContent>요금</PriceContent>
			<PriceInput value={isActivated ? `${minimumPrice + min * unit}~${minimumPrice + (max - 20) * unit}` : ""} readOnly />
			{isOn && (
				<PriceModal
					min={min}
					setMin={setMin}
					max={max}
					setMax={setMax}
					unit={unit}
					minimumPrice={minimumPrice}
					data={priceDataParser(data)}
				/>
			)}
			{isActivated && <CloseButton />}
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

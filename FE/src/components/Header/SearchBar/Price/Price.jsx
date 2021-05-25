import { useEffect, useState, useRef, useContext } from "react";
import styled from "styled-components";
import PriceModal from "./PriceModal";
import CloseButton from "../CloseButton";
import addComma from "../../../../util/addComma";
import { SearchBarContext } from "../../../../config/SearchBarContextProvider";

const Price = () => {
	const [isOn, setOn] = useState(false);

	const { min, setMin, max, setMax, priceData, setData } = useContext(SearchBarContext);
	const { minimumPrice, unit } = priceData;

	const isActivated = Boolean(min !== 0 || max !== 320);

	useEffect(() => {
		fetch(`http://3.37.76.224:8080/houses/charges?checkIn=2021-05-18&checkOut=2021-05-25&latitude=37.566826&longitude=126.9786567`)
			.then((res) => res.json())
			.then((json) => setData(() => json))
			.catch((res) => console.log("fetch error : ", res));
	});

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
			{isOn && <PriceModal range={range} data={priceData} />}
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

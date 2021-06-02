import { useEffect, useState, useRef, useContext } from "react";
import styled from "styled-components";
import PriceModal from "./PriceModal";
import CloseButton from "../CloseButton";
import addComma from "../../../../util/addComma";
import { SearchBarContext } from "../../../../config/SearchBarContextProvider";

const Price = () => {
	const [isOn, setOn] = useState(false);

	const { min, setMin, max, setMax, priceData, sliderPixel, sliderWidth } = useContext(SearchBarContext);
	const { minimumPrice, unit, average } = priceData;

	const isActivated = Boolean(min !== 0 || max !== sliderPixel + sliderWidth);

	const currentDOM = useRef<HTMLDivElement>(null);

	useEffect(() => {
		const blur = ({ target }: MouseEvent) => !currentDOM.current?.contains(target as HTMLDivElement) && setOn(false);
		document.addEventListener("click", blur);
		return () => document.removeEventListener("click", blur);
	}, []);

	const resetEvent = () => {
		setMin(0);
		setMax(sliderPixel + sliderWidth + 1);
	};

	const range = `₩${addComma(minimumPrice + min * unit)} ~ ₩${addComma(minimumPrice + (max - sliderWidth) * unit)}`;

	return (
		<PriceWrapper ref={currentDOM} onClick={() => setOn(true)}>
			<PriceContent>요금</PriceContent>
			<PriceInput value={isActivated ? range : ""} readOnly />
			{isOn && <PriceModal range={range} average={average} />}
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
	user-select: none;
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

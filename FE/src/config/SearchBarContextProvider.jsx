import React, { useEffect, useState } from "react";

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

const SearchBarContextProvider = ({ children }) => {
	const [start, setStart] = useState("");
	const [end, setEnd] = useState("");

	const sliderPixel = 300;
	const sliderWidth = 20;
	const [min, setMin] = useState(0);
	const [max, setMax] = useState(sliderPixel + sliderWidth + 1);

	useEffect(() => {
		if (max - min < sliderWidth) setMin(() => max - sliderWidth);
		if (min < 0) setMin(0);
		if (max < sliderWidth) setMax(sliderWidth);
		if (max > sliderPixel + sliderWidth) setMax(sliderPixel + sliderWidth);
	}, [min, max]);

	const [priceData, setPriceData] = useState(priceDataParser([], sliderPixel));
	useEffect(() => {
		fetch(`http://3.37.76.224:8080/houses/charges?checkIn=2021-05-18&checkOut=2021-05-25&latitude=37.566826&longitude=126.9786567`)
			.then((res) => res.json())
			.then((json) => setPriceData(priceDataParser(json, sliderPixel)))
			.catch((res) => console.log("fetch error : ", res));
	}, []);

	const [man, setMan] = useState(0);
	const [kid, setKid] = useState(0);
	const [baby, setBaby] = useState(0);

	useEffect(() => {
		if (man === 0 && (kid || baby)) setMan(1);
	}, [man, kid, baby]);

	return (
		<SearchBarContext.Provider
			value={{
				start,
				setStart,
				end,
				setEnd,
				min,
				setMin,
				max,
				setMax,
				sliderPixel,
				sliderWidth,
				priceData,
				man,
				setMan,
				kid,
				setKid,
				baby,
				setBaby,
			}}
		>
			{children}
		</SearchBarContext.Provider>
	);
};

export const SearchBarContext = React.createContext();

export default SearchBarContextProvider;

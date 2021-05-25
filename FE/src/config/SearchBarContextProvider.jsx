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

	const [min, setMin] = useState(0);
	const [max, setMax] = useState(321);

	useEffect(() => {
		if (max - min < 20) setMin(() => max - 20);
		if (min < 0) setMin(0);
		if (max < 20) setMax(20);
		if (max > 320) setMax(320);
	}, [min, max]);

	const [priceData, setPriceData] = useState(priceDataParser([], 300));
	useEffect(() => {
		fetch(`http://3.37.76.224:8080/houses/charges?checkIn=2021-05-18&checkOut=2021-05-25&latitude=37.566826&longitude=126.9786567`)
			.then((res) => res.json())
			.then((json) => setPriceData(priceDataParser(json, 300)))
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

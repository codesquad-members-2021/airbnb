import React, { useContext, useState } from "react";
import { SearchBarContext } from "./SearchBarContextProvider";

const ResultContextProvider = ({ children }) => {
	const [isResultOn, setResultOn] = useState(false);
	const [isSearching, setSearching] = useState(false);
	const [isModalOn, setModalOn] = useState(false);
	const [modalData, setModalData] = useState({ charge: 0, cleaningRatio: 0, serviceRatio: 0, discountRatio: 0 });
	const [housesList, setHousesList] = useState([]);
	const [latitude, setLatitude] = useState(37.490821);
	const [longitude, setLongitude] = useState(127.0312283);

	const { start, end, min, max, priceData, man, kid, baby } = useContext(SearchBarContext);

	const fetchHouses = (latitudeArg = latitude, longitudeArg = longitude) => {
		const url = `http://3.37.76.224:8080/houses?${start && end ? `checkIn=${start}&checkOut=${end}&` : ""}minCharge=${
			priceData.minimumPrice + min * priceData.unit
		}&maxCharge=${priceData.minimumPrice + (max - 20) * priceData.unit}&guest=${
			man + kid
		}&kid=${baby}&latitude=${latitudeArg}&longitude=${longitudeArg}`;
		fetch(url)
			.then((res) => res.json())
			.then((json) => setHousesList(() => json))
			.then(() => setSearching(false))
			.catch((res) => console.log("fetch error in Houses : ", res));
	};

	const fetchModal = (houseId) => {
		fetch(`http://3.37.76.224:8080/houses/${houseId}`)
			.then((res) => res.json())
			.then((json) => setModalData(() => json))
			.catch((res) => console.log("fetch error in Modal : ", res));
	};

	return (
		<ResultContext.Provider
			value={{
				isResultOn,
				setResultOn,
				isSearching,
				setSearching,
				isModalOn,
				setModalOn,
				modalData,
				housesList,
				latitude,
				setLatitude,
				longitude,
				setLongitude,
				fetchHouses,
				fetchModal,
			}}
		>
			{children}
		</ResultContext.Provider>
	);
};

export const ResultContext = React.createContext();

export default ResultContextProvider;

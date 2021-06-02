import React, { useContext, useState } from "react";
import { SearchBarContext } from "./SearchBarContextProvider";

const ResultContextProvider = ({ children }: { children: React.ReactNode }) => {
	const [isResultOn, setResultOn] = useState(false);
	const [isSearching, setSearching] = useState(false);
	const [isModalOn, setModalOn] = useState(false);
	const [modalData, setModalData] = useState({ charge: 0, cleaningRatio: 0, serviceRatio: 0, discountRatio: 0, review: 0 });
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

	const fetchModal = (houseId: number) => {
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

export interface IHouse {
	charge: number;
	description: string;
	grade: number;
	id: number;
	image: string;
	local: string;
	location: { latitude: number; longitude: number };
	name: string;
	options: Array<string>;
	review: number;
	wish: boolean;
}

interface IResult {
	isResultOn: boolean;
	setResultOn: React.Dispatch<React.SetStateAction<boolean>>;
	isSearching: boolean;
	setSearching: React.Dispatch<React.SetStateAction<boolean>>;
	isModalOn: boolean;
	setModalOn: React.Dispatch<React.SetStateAction<boolean>>;
	modalData: {
		charge: number;
		cleaningRatio: number;
		serviceRatio: number;
		discountRatio: number;
		review: number;
	};
	housesList: Array<IHouse>;
	latitude: number;
	setLatitude: React.Dispatch<React.SetStateAction<number>>;
	longitude: number;
	setLongitude: React.Dispatch<React.SetStateAction<number>>;
	fetchHouses: (latitude: number, longitude: number) => void;
	fetchModal: (houseId: number) => void;
}

export const ResultContext = React.createContext({} as IResult);

export default ResultContextProvider;

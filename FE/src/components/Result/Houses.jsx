import { useState, useEffect, useContext } from "react";
import styled from "styled-components";
import { SearchBarContext } from "../../config/SearchBarContextProvider";
import House from "./House";
import addComma from "../../util/addComma";

const Houses = () => {
	const [housesList, setHousesList] = useState([]);

	const { start, end, min, max, priceData, man, kid, baby } = useContext(SearchBarContext);
	const { minimumPrice, unit } = priceData;

	const url = `http://3.37.76.224:8080/houses?${start && end ? `checkIn=${start}&checkOut=${end}&` : ""}minCharge=${
		minimumPrice + min * unit
	}&maxCharge=${minimumPrice + (max - 20) * unit}&guest=${man + kid}&kid=${baby}&latitude=37.490821&longitude=127.0312283`;

	useEffect(() => {
		fetch(url)
			.then((res) => res.json())
			.then((json) => setHousesList(() => json))
			.catch((res) => console.log("fetch error : ", res));
	}, []);

	const filter = `${housesList.length}개의 숙소 ∙ ${start && end ? `${start} - ${end} ∙ ` : ""}₩${addComma(
		minimumPrice + min * unit
	)} ~ ₩${addComma(minimumPrice + (max - 20) * unit)}${man ? ` ∙ 게스트${man + kid}명 ${baby ? `유아${baby}명` : ""}` : ""}`;

	return (
		<HousesWrapper>
			<Filter>{filter}</Filter>
			<Title>지도에서 선택한 지역의 숙소</Title>
			{housesList.map((el) => (
				<House key={el.id} data={el} />
			))}
		</HousesWrapper>
	);
};

const HousesWrapper = styled.div`
	position: relative;
	width: 50%;
	padding: 24px;
`;
const Filter = styled.div`
	position: relative;
	margin-top: 8px;
	font-size: 12px;
	line-height: 17px;
	color: #333333;
`;
const Title = styled.div`
	position: relative;
	margin-top: 8px;
	font-weight: bold;
	font-size: 24px;
	line-height: 35px;
	color: #333333;
`;

export default Houses;

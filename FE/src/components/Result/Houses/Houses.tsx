import { useContext } from "react";
import styled from "styled-components";
import House from "./House";
import { SearchBarContext } from "config/SearchBarContextProvider";
import { ResultContext } from "config/ResultContextProvider";
import parseDate from "util/parseDate";
import addComma from "util/addComma";

const Houses = () => {
	const { start, end, min, max, priceData, man, kid, baby } = useContext(SearchBarContext);
	const { minimumPrice, unit } = priceData;
	const { housesList } = useContext(ResultContext);

	const filter = `${housesList.length}개의 숙소 ∙ ${start && end ? `${start} - ${end} ∙ ` : ""}₩${addComma(
		minimumPrice + min * unit
	)} ~ ₩${addComma(minimumPrice + (max - 20) * unit)}${man ? ` ∙ 게스트${man + kid}명 ${baby ? `유아${baby}명` : ""}` : ""}`;

	const period = (parseDate(end).getTime() - parseDate(start).getTime()) / 1000 / 60 / 60 / 24;

	return (
		<HousesWrapper>
			<Filter>{filter}</Filter>
			<Title>지도에서 선택한 지역의 숙소</Title>
			{housesList.map((el) => <House key={el.id} data={el} period={period} />)}
		</HousesWrapper>
	);
};

const HousesWrapper = styled.div`
	position: relative;
	width: 50%;
	padding: 24px;
	overflow-y: hidden;
	&:hover {
		overflow-y: scroll;
		::-webkit-scrollbar {
			position: absolute;
			float: right;
			background-color: #a6a7ab;
			width: 13px;
			border-radius: 10px;
		}
		::-webkit-scrollbar-thumb:vertical {
			background-color: #4c4c4c;
			border-radius: 10px;
			border: 2px solid transparent;
			background-clip: padding-box;
		}
	}
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

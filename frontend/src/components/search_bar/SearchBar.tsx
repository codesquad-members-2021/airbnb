import styled from "styled-components";
import SearchBy from "./SearchBy";

export interface IAppProps {}

export default function SearchBar(props: IAppProps) {
	return (
		<StyleSearchBar>
			{/* 검색 조건에 지역 넣게되면 아래 줄 주석 풀기 */}
			{/* <SearchBy type="LOCATION" input="어디로 여행가세요?" isEnd={false} /> */} 
			<SearchBy type="CHECKIN" isEnd={false} placeholder="date" />
			<SearchBy type="CHECKOUT" isEnd={false} placeholder="date" />
			<SearchBy type="FEE" isEnd={false} placeholder="Set arange" />
			<SearchBy type="GUEST" isEnd={true} placeholder="Set guest" />
		</StyleSearchBar>
	);
}

const StyleSearchBar = styled.div`
	display: flex;
	position: absolute;
	align-items: center;
	justify-content: space-between;
	width: 916px;
	height: 76px;
	top: 110px;
	left: 270px;
	border-radius: 60px;
	background-color: #ffffff;
`;

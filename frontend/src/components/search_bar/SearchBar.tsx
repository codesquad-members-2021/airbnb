import styled from "styled-components";
import SearchFilter from "./SearchFilter";

export interface IAppProps {}

export default function SearchBar(props: IAppProps) {
	return (
		<StyleSearchBar>
			{/* 검색 조건에 지역 넣게되면 아래 줄 주석 풀기 */}
			{/* <SearchFilter type="LOCATION" input="어디로 여행가세요?" isEnd={false} /> */}
			<SearchFilter type="CHECKIN" isEnd={false} placeholder={true} />
			<SearchFilter type="CHECKOUT" isEnd={false} placeholder={true} />
			<SearchFilter type="FEE" isEnd={false} placeholder={true} />
			<SearchFilter type="GUEST" isEnd={true} placeholder={true} />
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
	left: 25%;
	border-radius: 60px;
	background-color: #ffffff;
`;

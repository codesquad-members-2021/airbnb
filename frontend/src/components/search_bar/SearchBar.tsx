import styled from "styled-components";
import SearchBy from "./SearchBy";

export interface IAppProps {}

export default function SearchBar(props: IAppProps) {
	return (
		<StyleSearchBar>
			{/* 검색 조건에 지역 넣게되면 아래 줄 주석 풀기 */}
			{/* <SearchBy type="위치" input="어디로 여행가세요?" isEnd={false} /> */} 
			<SearchBy type="체크인" isEnd={false} placeholder="날짜 입력" />
			<SearchBy type="체크아웃" isEnd={false} placeholder="날짜 입력" />
			<SearchBy type="요금" isEnd={false} placeholder="금액대 설정" />
			<SearchBy type="인원" isEnd={true} placeholder="게스트 추가" />
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

import styled from "styled-components";
import {ReactComponent as SearchIcon} from './../../icons/search.svg';

export interface IAppProps {
	type: string;
	input?: string;
	isEnd: boolean;
	placeholder?: string;
}

export default function SearchBy({ type, input, isEnd, placeholder }: IAppProps) {

	const handleSearchClick = (): void => {
		console.log("search!");
	}

	return (
		<>
		<StyleSearch isEnd= {isEnd}>
			<SearchWrapper isEnd={isEnd}>
				{type}
				{input && <SearchLocationStyle placeholder={input}></SearchLocationStyle>}
				{placeholder && <div>{placeholder}</div>}
			</SearchWrapper>
		</StyleSearch>
			{isEnd && <StyleSearchBtn onClick ={handleSearchClick}><SearchIcon stroke="#FFFFFF"/></StyleSearchBtn>}
		</>
	);
}

const StyleSearch = styled.button <{isEnd: boolean}>`
	font-family: "Noto Sans KR", sans-serif;
	width: ${(props) => (props.isEnd ? `${40}%` : `${25}%` )};
	height: 100%;
	border-radius: 60px;
	background-color: #ffffff;
	:hover {
		background-color: #e0e0e0;
	}
`;

const SearchWrapper = styled.div < { isEnd: boolean } >`
	height: 44px;
	display: flex;
	flex-direction: column;
	align-items: flex-start;
	justify-content: space-around;
	border-right: ${(props) => (props.isEnd ? 'none' : '1px solid #E0E0E0')};
	margin-left: 20px;
`

const SearchLocationStyle = styled.input`
	border:none;
	
`

const StyleSearchBtn = styled.button`
	position: absolute;
	width: 50px;
	height: 50px;
	left: 93%;
	background-color: #E84C60;
	border-radius: 50%;
	transition: background-color 0.5s;
	:hover {
		background-color : #d12038;
	}
`
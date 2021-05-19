import {useState} from 'react';
import styled from "styled-components";
import {ReactComponent as SearchIcon} from './../../icons/search.svg';
import translate from '../../utils/translate';

export interface IAppProps {
	type: string;
	input?: string;
	isEnd: boolean;
	placeholder?: boolean;
}


export default function SearchFilter({ type, input, isEnd, placeholder }: IAppProps) {
	const [isLocationModalOn, setIsLocationModalOn] = useState<boolean>(false);
	const [isScheduleModalOn, setIsScheduleModalOn] = useState<boolean>(false);
	const [isFeeModalOn, setIsFeeModalOn] = useState<boolean>(false);
	const [isGuestModalOn, setIsGuestModalOn] = useState<boolean>(false);

	const handleSearchClick = (): void => {
		console.log("search!");
	}

	const handleOnClick =(type:string): void => {
		if(type === "LOCATION") isLocationModalOn ? setIsLocationModalOn(false) : setIsLocationModalOn(true);
		else if (type === "CHECKIN" || type === "CHECKOUT") isScheduleModalOn ? setIsScheduleModalOn(false) : setIsScheduleModalOn(true);
		else if (type === "FEE") isFeeModalOn ? setIsFeeModalOn(false) : setIsFeeModalOn(true);
		else if (type === "GUEST") isGuestModalOn ? setIsGuestModalOn(false) : setIsGuestModalOn(true);
		console.log(`${type} clicked`);
	}

	return (
		<>
		<StyleFilter isEnd= {isEnd} onClick={()=>handleOnClick(type)}>
			<SearchWrapper isEnd={isEnd}>
				{translate("title", type, "KR")}
				{input && <SearchLocationStyle placeholder={input}></SearchLocationStyle>}
				{placeholder && <div>{translate("placeholder",type, "KR")}</div>}
			</SearchWrapper>
		</StyleFilter>
			{isEnd && <StyleSearchBtn onClick ={handleSearchClick}><SearchIcon stroke="#FFFFFF"/></StyleSearchBtn>}
		</>
	);
}

const StyleFilter = styled.button <{isEnd: boolean}>`
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
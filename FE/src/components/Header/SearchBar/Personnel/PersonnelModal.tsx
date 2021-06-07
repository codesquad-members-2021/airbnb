import React, { useContext } from "react";
import styled from "styled-components";
import { SearchBarContext } from "config/SearchBarContextProvider";

const PersonnelModal = () => {
	const { man, setMan, kid, setKid, baby, setBaby } = useContext(SearchBarContext);
	return (
		<PersonnelModalWrapper>
			<Content title="성인" body="만 13세 이상" count={man} setCount={setMan} />
			<Line />
			<Content title="어린이" body="만 2세~12세" count={kid} setCount={setKid} />
			<Line />
			<Content title="유아" body="만 2세 미만" count={baby} setCount={setBaby} />
		</PersonnelModalWrapper>
	);
};

interface IContent {
	title: string;
	body: string;
	count: number;
	setCount: React.Dispatch<React.SetStateAction<number>>;
}

const Content = ({ title, body, count, setCount }: IContent) => (
	<ContentWrapper>
		<ContentTitle>{title}</ContentTitle>
		<ContentBody>{body}</ContentBody>
		<Controller>
			<MinusButton disable={count < 1} onClick={() => setCount((count) => (count < 1 ? 0 : count - 1))} />
			<Count>{count}</Count>
			<PlusButton disable={count > 7} onClick={() => setCount((count) => (count > 7 ? 8 : count + 1))} />
		</Controller>
	</ContentWrapper>
);

const MinusButton = ({ disable, onClick }: { disable: boolean; onClick: React.EventHandler<React.MouseEvent> }) => (
	<svg onClick={onClick} width="36" height="36" viewBox="0 0 36 36" fill="none" xmlns="http://www.w3.org/2000/svg">
		<path
			d="M18 33C26.2843 33 33 26.2843 33 18C33 9.71573 26.2843 3 18 3C9.71573 3 3 9.71573 3 18C3 26.2843 9.71573 33 18 33Z"
			stroke={disable ? "#E0E0E0" : "#828282"}
			strokeLinecap="round"
			strokeLinejoin="round"
		/>
		<path d="M12 18H24" stroke={disable ? "#E0E0E0" : "#828282"} strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
	</svg>
);

const PlusButton = ({ disable, onClick }: { disable: boolean; onClick: React.EventHandler<React.MouseEvent> }) => (
	<svg onClick={onClick} width="36" height="36" viewBox="0 0 36 36" fill="none" xmlns="http://www.w3.org/2000/svg">
		<path
			d="M18 33C26.2843 33 33 26.2843 33 18C33 9.71573 26.2843 3 18 3C9.71573 3 3 9.71573 3 18C3 26.2843 9.71573 33 18 33Z"
			stroke={disable ? "#E0E0E0" : "#828282"}
			strokeLinecap="round"
			strokeLinejoin="round"
		/>
		<path d="M18 12V24" stroke={disable ? "#E0E0E0" : "#828282"} strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
		<path d="M12 18H24" stroke={disable ? "#E0E0E0" : "#828282"} strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
	</svg>
);

const PersonnelModalWrapper = styled.div`
	position: absolute;
	width: 400px;
	height: 355px;
	left: -80px;
	top: 76px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	background: #ffffff;
	box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
	border-radius: 40px;
`;
const ContentWrapper = styled.div`
	position: relative;
	width: 272px;
	height: 43px;
`;
const ContentTitle = styled.div`
	font-weight: bold;
	font-size: 16px;
	line-height: 23px;
	color: #010101;
`;
const ContentBody = styled.div`
	font-size: 14px;
	line-height: 20px;
	color: #828282;
`;
const Controller = styled.div`
	position: absolute;
	top: 4px;
	left: 154px;
	width: 116px;
	height: 36px;
	display: flex;
	justify-content: space-between;
	align-items: center;
`;
const Count = styled.div`
	font-weight: bold;
	font-size: 20px;
	line-height: 29px;
	color: #333333;
`;
const Line = styled.div`
	width: 272px;
	height: 1px;
	background: #c4c4c4;
	margin: 24px;
`;

export default PersonnelModal;

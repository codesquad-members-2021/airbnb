import styled from "styled-components";
// import CloseButton from "./CloseButton";

const Personnel = () => (
	<PersonnelWrapper>
		<PersonnelContent>인원</PersonnelContent>
		<PersonnelInput />
		{/* <CloseButton /> */}
	</PersonnelWrapper>
);

const PersonnelWrapper = styled.div`
	position: relative;
	width: 188px;
	height: 44px;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	margin-left: 24px;
`;
const PersonnelContent = styled.div`
	font-weight: bold;
	font-size: 12px;
	line-height: 17px;
	color: #010101;
`;
const PersonnelInput = styled.input.attrs({
	placeholder: "게스트 추가",
})`
	width: 100%;
	height: 23px;
	padding: 0px;
	font-size: 16px;
	line-height: 23px;
	border: none;
	color: #010101;
`;

export default Personnel;

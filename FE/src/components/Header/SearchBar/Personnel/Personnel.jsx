import styled from "styled-components";
import PersonnelModal from "./PersonnelModal";
import CloseButton from "../CloseButton";
import { useContext, useEffect, useRef, useState } from "react";
import { SearchBarContext } from "../../../../config/SearchBarContextProvider";

const Personnel = () => {
	const [isOn, setOn] = useState(false);

	const { man, setMan, kid, setKid, baby, setBaby } = useContext(SearchBarContext);

	const isActivated = Boolean(man || kid || baby);

	const currentDOM = useRef();

	useEffect(() => {
		const blur = ({ target }) => !currentDOM.current?.contains(target) && setOn(false);
		document.addEventListener("click", blur);
		return () => document.removeEventListener("click", blur);
	}, []);

	const resetEvent = () => {
		setMan(0);
		setKid(0);
		setBaby(0);
	};

	return (
		<PersonnelWrapper ref={currentDOM} onClick={() => setOn(true)}>
			<PersonnelContent>인원</PersonnelContent>
			<PersonnelInput value={isActivated ? `게스트 ${man + kid}명, 유아${baby}명` : ""} readOnly />
			{isOn && <PersonnelModal />}
			{isActivated && <CloseButton onClick={resetEvent} />}
		</PersonnelWrapper>
	);
};

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

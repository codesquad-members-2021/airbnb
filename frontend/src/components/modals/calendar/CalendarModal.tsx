import { useEffect } from "react";
import styled from "styled-components";
import ModalContainer from "../../../styles/ModalContainer";
import { ModalInterface } from "../../../utils/interfaces";

export default function CalendarModal({ type, setInplaceHolder, isActive, setModalOn }: ModalInterface) {
	const handleOutClick = () => {
		setModalOn(false);
		window.removeEventListener("click", handleOutClick);
	};

	useEffect(() => {
		window.addEventListener("click", handleOutClick);
	}, []);

	const handleOnclick = (e: any) => {
		e.stopPropagation();
		console.log("modal clicked");
	};

	return (
		<>
			{isActive && (
				<ModalContainer type={type} onClick={(e) => handleOnclick(e)}>
					<ContentWrapper>달력모달~</ContentWrapper>
				</ModalContainer>
			)}
		</>
	);
}

const ContentWrapper = styled.div``;

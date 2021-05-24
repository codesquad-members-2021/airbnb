import { useEffect } from "react";
import styled from "styled-components";
import ModalContainer from "../../../styles/ModalContainer";
import { ModalInterface } from "../../../utils/interfaces";

export default function FeeModal({ type, setInplaceHolder, isActive, setModalOn }: ModalInterface) {
	const handleOutClick = () => {
		setModalOn(false);
		window.removeEventListener("click", handleOutClick);
	};

	useEffect(() => {
		window.addEventListener("click", handleOutClick);
	}, []);

	const handleOnclick = (e: any) => {
		e.stopPropagation();
	};
	return (
		<>
			{isActive && (
				<ModalContainer type={type} onClick={(e) => handleOnclick(e)}>
					<ContentWrapper>요금모달~</ContentWrapper>
				</ModalContainer>
			)}
		</>
	);
}

const ContentWrapper = styled.div``;

import styled from "styled-components";
import ModalContainer from "../../../styles/ModalContainer";
import { ModalInterface } from "../../../utils/interfaces";

export default function FeeModal({ type, setInplaceHolder }: ModalInterface) {
	return (
		<ModalContainer type={type}>
			<ContentWrapper>요금모달~</ContentWrapper>
		</ModalContainer>
	);
}

const ContentWrapper = styled.div``;

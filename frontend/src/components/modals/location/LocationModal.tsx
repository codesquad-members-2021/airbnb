import styled from "styled-components";
import ModalContainer from "../../../styles/ModalContainer";
import { ModalInterface } from "../../../utils/interfaces";

export default function LocationModal({ type }: ModalInterface) {
	return (
		<ModalContainer type={type}>
			<ContentWrapper>로케이션모달~</ContentWrapper>
		</ModalContainer>
	);
}

const ContentWrapper = styled.div``;

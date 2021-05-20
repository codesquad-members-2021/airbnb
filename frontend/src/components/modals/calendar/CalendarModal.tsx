import styled from "styled-components";
import ModalContainer from "../../../styles/ModalContainer";
import { ModalInterface } from "../../../utils/interfaces";

export default function CalendarModal({ type, setInplaceHolder }: ModalInterface) {
	return (
		<ModalContainer type={type}>
			<ContentWrapper>달력모달~</ContentWrapper>
		</ModalContainer>
	);
}

const ContentWrapper = styled.div``;

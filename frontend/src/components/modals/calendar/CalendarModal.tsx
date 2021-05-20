import styled from "styled-components";
import ModalContainer from "../../../styles/ModalContainer";
import { ModalInterface } from "../../../utils/interfaces";

export default function CalendarModal({ type }: ModalInterface) {
	return (
		<ModalContainer isActive={true} type={type}>
			<ContentWrapper>달력모달~</ContentWrapper>
		</ModalContainer>
	);
}

const ContentWrapper = styled.div``;

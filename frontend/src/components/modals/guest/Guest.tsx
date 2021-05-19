import styled from 'styled-components';
import ModalContainer from './../../../styles/ModalContainer';

export interface IAppProps {

}

export default function Guest (props:IAppProps) {
    return (
        <ModalContainer isActive={true}>
            <ContentWrapper>
                게스트모달~
            </ContentWrapper>
        </ModalContainer>
    )
}

const ContentWrapper = styled.div`

`

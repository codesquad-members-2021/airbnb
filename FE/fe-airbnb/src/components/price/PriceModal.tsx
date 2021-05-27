import styled from 'styled-components';

function PriceModal() {
  return (
    <PriceModalContainer>
      요금 모달
    </PriceModalContainer>
  );
}

const PriceModalContainer = styled.div`
  width: 493px;
  height: fit-content;
  border-radius: ${({ theme }) => theme.borders.L};
  box-shadow: ${({ theme }) => theme.boxShadow.up2};
  padding: 52px 64px;
  margin-top: 16px;
  position: absolute;
  left: 305px;
`

export default PriceModal;

import styled from 'styled-components';

function HeadCountModal() {
  return (
    <HeadCountContainer>
      인원 모달
    </HeadCountContainer>
  );
}

const HeadCountContainer = styled.div`
  width: 400px;
  height: fit-content;
  border-radius: ${({ theme }) => theme.borders.L};
  box-shadow: ${({ theme }) => theme.boxShadow.up2};
  padding: 64px;
  margin-top: 16px;
  position: absolute;
  right: 0;
`

export default HeadCountModal;

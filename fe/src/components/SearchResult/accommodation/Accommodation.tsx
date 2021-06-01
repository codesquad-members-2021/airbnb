import styled from 'styled-components';

const Accommodation = () => {
  return (
    <AccommodationWarp>
      <Container>
        <Desc>500개이상 블라블라</Desc>
        <Title>지도에서 선택한 지역의 숙소</Title>
        <div>숙소리스트</div>
      </Container>
    </AccommodationWarp>
  );
};

export default Accommodation;

const AccommodationWarp = styled.section`
  margin: 0;
  padding: 32px 24px 0 24px;
  height: 100%;
  width: 50%;
`;

const Container = styled.div`
  display: flex;
  flex-direction: column;
  width: 684px;
  height: 806px;
`;

const Title = styled.h3`
  margin-top: 8px;
  color: ${({ theme }) => theme.color.gray3};
  font-weight: ${({ theme }) => theme.fontWeight.bold};
  font-size: ${({ theme }) => theme.fontSize.xl};
`;

const Desc = styled.span`
  color: ${({ theme }) => theme.color.gray3};
  font-size: ${({ theme }) => theme.fontSize.s};
`;

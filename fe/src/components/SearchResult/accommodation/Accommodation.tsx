import styled from 'styled-components';

const Accommodation = () => {
  return (
    <AccommodationWarp>
      <Container>
        <span>500개이상 블라블라</span>
        <h3>지도에서 선택한 지역의 숙소</h3>
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

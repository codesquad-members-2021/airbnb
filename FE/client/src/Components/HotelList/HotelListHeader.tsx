import styled from 'styled-components';

const HotelListHeader = () => {
  return (
    <>
      <UserSelectInfo>
        300개 이상의 숙소 5월 12일 게스트 3명
     </UserSelectInfo>
      <HotelListHeaderTitle>
        지도에서 선택한 지역의 숙소
     </HotelListHeaderTitle>
    </>
  )
}

const UserSelectInfo = styled.div`
  color:#333333;
  font-size: .75rem;
  margin-bottom: .5rem;
`;

const HotelListHeaderTitle = styled.div`
  font-size:1.5rem;
  font-weight: 700;
  margin-bottom: .5rem;
`;

export default HotelListHeader;

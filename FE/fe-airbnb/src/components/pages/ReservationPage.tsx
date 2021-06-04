import HotelInfoList from '@components/hotelList/HotelInfoList'
import styled from 'styled-components'

function ReservationPage() {
  return (
    <div>
      <div>300개 이상의  숙소 • 5월 12일 - 5월 18일 • 가격 범위 • 게스트 3명</div>
      <Title>지도에서 선택한 지역의 숙소</Title>
      <HotelInfoList />
    </div>
  )
}

const Title = styled.h2`
  color: ${({theme}) => theme.colors.gray1};
  font-size: 24px;
  font-weight: bold;
`

export default ReservationPage

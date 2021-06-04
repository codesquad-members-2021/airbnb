import { Flex } from '@chakra-ui/layout'
import HotelInfoList from '@components/hotelList/HotelInfoList'
import { MapMemo } from '@components/map/Map'
import styled from 'styled-components'

function ReservationPage() {
  return (
    <Flex>
      <SearchResultList>
        <div>300개 이상의  숙소 • 5월 12일 - 5월 18일 • 가격 범위 • 게스트 3명</div>
        <Title>지도에서 선택한 지역의 숙소</Title>
        <HotelInfoList />
      </SearchResultList>
      <SearchResultMap>
        <MapMemo />
      </SearchResultMap>
    </Flex>
  )
}

const SearchResultList = styled.div`
  width: 45%;
  height: 100vh;
  overflow: scroll;
`
const SearchResultMap = styled.div`
  width: 55%;
`

const Title = styled.h2`
  color: ${({theme}) => theme.colors.gray1};
  font-size: 24px;
  font-weight: bold;
`

export default ReservationPage

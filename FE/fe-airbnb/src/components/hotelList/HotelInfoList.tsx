import styled from '@emotion/styled';
import { HotelListContext } from '../../App'
import { useContext } from 'react'
import HotelInfo from './HotelInfo';

function HotelInfoList() {
  const { hotelListData } = useContext(HotelListContext);

  return (
    <HotelInfoListContainer>
      {hotelListData && hotelListData.map((hotelData) => <HotelInfo key={hotelData.id} hotelData={hotelData}/>)}
    </HotelInfoListContainer>
  )
}

const HotelInfoListContainer = styled.ul`
  display: flex;
  flex-direction: column;
  gap: 50px;
`

export default HotelInfoList

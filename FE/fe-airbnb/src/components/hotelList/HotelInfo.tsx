import styled from 'styled-components';
import { HotelInfoProps } from './hotelInfoTypes';

function HotelInfo({ hotelData }: HotelInfoProps) {
  const { 
    name,
    accommodationOption,
    pricePerNight,
    totalPrice,
    reviewRating,
    reviewCounts,
    mainImage
   } = hotelData;

  const { 
    capacity, 
    bedroomCount, 
    restroomCount, 
    hasKitchen, 
    hasInternet, 
    hasAirconditioner, 
    hasHairdrier 
  } = accommodationOption;
  
  return (
    <HotelInfoContainer>
      <Thumbnail src={mainImage}></Thumbnail>
      <Informations>
        <HotelInfoTop>
          <HotelName>{name}</HotelName>
          <Accommodation>
            <div>
              <span className="room-info">최대 인원 {capacity}명 • 침대 {bedroomCount}개 • 욕실 {restroomCount}개</span>
            </div>
            <div>
              {hasKitchen && <span className="accommo-info">주방</span>}
              {hasInternet && <span className="accommo-info"> 무선 인터넷</span>}
              {hasAirconditioner && <span className="accommo-info"> 에어컨</span>}
              {hasHairdrier && <span className="accommo-info"> 헤어드라이어</span>}
            </div>
          </Accommodation>
        </HotelInfoTop>
      
        <HotelInfoBottom>
          <ReviewInfo>
            <div>⭐️</div>
            <div>
              <span className="rate-average">{reviewRating}</span>
              <span className="review-count">후기 {reviewCounts}개</span>
            </div>
          </ReviewInfo>
          <PriceInfo>
            <PricePerNight>
              <span className="price">₩{pricePerNight}</span>
              <span> / 박</span>
            </PricePerNight>
            <TotalPrice>
              총액 ₩{totalPrice}
            </TotalPrice>
          </PriceInfo>
        </HotelInfoBottom>
      </Informations>
    </HotelInfoContainer>
  )
}

const HotelInfoContainer = styled.li`
  width: 100%;
  height: 200px;
  display: flex;
`

const Thumbnail = styled.img`
  width: 330px;
  height: 200px;
  object-fit: cover;
  border-radius: ${({theme}) => theme.borders.S};
  margin-right: 24px;
`

const Informations = styled.div`
  display: flex;
  width: calc(100% - 330px);
  flex-direction: column;
  justify-content: space-between;
  padding: 4px 0;
`

const HotelInfoTop = styled.div``

const HotelInfoBottom = styled.div`
  display: flex;
  justify-content: space-between;
`

const HotelName = styled.div`
  font-size: ${({theme}) => theme.fontSizes.S};
  color: ${({theme}) => theme.colors.gray1};
`

const Accommodation = styled.div`
  font-size: ${({theme}) => theme.fontSizes.XS};
  color: ${({theme}) => theme.colors.gray3};
`

const ReviewInfo = styled.div`
  display: flex;
  align-items: flex-end;

  .rate-average {
    font-size: ${({theme}) => theme.fontSizes.XS};
    color: ${({theme}) => theme.colors.gray1};
    font-weight: bold;
    margin: 0 4px;
  }

  .review-count {
    font-size: ${({theme}) => theme.fontSizes.XS};
    color: ${({theme}) => theme.colors.gray3};
  }
`

const PriceInfo = styled.div`
  text-align: right;
`

const PricePerNight = styled.div`
  span {
    font-size: ${({theme}) => theme.fontSizes.S};
  }

  .price {
    font-weight: bold;
  }
`

const TotalPrice = styled.div`
  font-size: ${({theme}) => theme.fontSizes.XS};
  color: ${({theme}) => theme.colors.gray3};
  text-decoration: underline;
`

export default HotelInfo

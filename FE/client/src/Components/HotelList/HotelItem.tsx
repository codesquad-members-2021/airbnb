import styled from 'styled-components';
import { HotelListType } from '@Components/commons/baseType';
import starImage from '@/Images/star.svg';
import { useRecoilValue } from 'recoil';
import { calendarClickAtom } from '@/recoil/atoms';
import { useMemo } from 'react';

type HotelInfoTType = {
  hotelInfo: HotelListType
}
const ONE_DAY_TIME = 8.64e+7;
const HotelItem = ({ hotelInfo }: HotelInfoTType) => {
  const [firstDayTime, LastDayTime] = useRecoilValue(calendarClickAtom);
  const dayCount = useMemo(() => {
    return (LastDayTime - firstDayTime) / ONE_DAY_TIME;
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [firstDayTime, LastDayTime]);

  const { imageUrl, maximumOccupancy, numberOfBathrooms, numberOfBeds,
    oneroom, price, reviewCount, reviewStarPoint, title } = hotelInfo;

  return (
    <HotelItemWrapper>
      <ImageWrapper>
        <ImageTag src={imageUrl.split(',')[Math.floor(Math.random() * 7)]} alt="" />
      </ImageWrapper>
      <HotelDescWrapper>
        <Location>서울의 아파트 전체</Location>
        <HotelTitle>{title}</HotelTitle>

        <HotelOption>
          최대인원 {maximumOccupancy}명 ·
          {oneroom ? '원룸 · ' : ''}
          침대{numberOfBeds}개 ·
          욕실{numberOfBathrooms}개
        </HotelOption>
        <HotelOption>
          주방 · 무선인터넷 · 에어컨 · 헤어 드라이어
        </HotelOption>
        <FooterWrapper>
          <Grade>
            <ReviewStarPoint>
              <img src={starImage} alt="" style={{ float: 'left' }} />&nbsp;
              {reviewStarPoint.toFixed(2)}
            </ReviewStarPoint>
            <ReviewCount>
              (후기 {reviewCount}개)
            </ReviewCount>
          </Grade>
          <Price>
            <div>
              <OneDayPrice>₩{price.toLocaleString()}</OneDayPrice> / 박
            </div>
            <TotalPrice>
              총액 ₩{dayCount
                ? (Math.floor(dayCount * price * 1.2)).toLocaleString()
                : (Math.floor(price * 1.2)).toLocaleString()}
            </TotalPrice>
          </Price>
        </FooterWrapper>
      </HotelDescWrapper>
    </HotelItemWrapper>
  )
}

const HotelItemWrapper = styled.div`
  display:flex;
  padding: 1.5rem 0;
  height: 250px;
  justify-content: space-around;
  & + &{
    border-top: 1px solid #E0E0E0;
  }
`;

const ImageWrapper = styled.div`
  width: 45%;
  max-width: 300px;
  height: 100%;
  margin-right: 1rem;
`;

const ImageTag = styled.img`
  max-width: 100%;
  max-height: 100%;
  border-radius: 10px;
`;

const HotelDescWrapper = styled.div`
  width: 55%;
  position:relative;
`;

const Location = styled.div`
  font-size: .75rem;
  margin-bottom: .5rem;
  color:#828282
`;

const HotelTitle = styled.div`
  font-size: .9rem;
  margin-bottom: .5rem;
  color: #333333;
`;

const HotelOption = styled.div`
  font-size: .75rem;
  color:#828282;
  margin-bottom: .1rem;
`;

const FooterWrapper = styled.div`
  display: flex;
`;

const Grade = styled.div`
  position: absolute;
  bottom:0;
  left:0;
  font-size: .75rem;
`;

const Price = styled.div`
  position: absolute;
  text-align: end;
  bottom:0;
  right:0;
  font-size: .75rem;
`;

const OneDayPrice = styled.span`
  font-weight: 700;
`;

const TotalPrice = styled.div`
  text-decoration: underline;
`;
const ReviewStarPoint = styled.span`
  margin-right: .25rem;
`;

const ReviewCount = styled.span`
  color: #828282;
`;
export default HotelItem;

import styled from 'styled-components';
import ReserveRoom from './ReserveRoom';
import { roomType } from './roomType';

interface Props {
  className?: string;
}

const ReserveRoomList = ({ className }: Props) => {
  const reserveRoomList = data.map((roomData) => (
    <ReserveRoom key={roomData.id} roomData={roomData} />
  ));
  return (
    <StyledReserveRoomList className={className}>
      <div className='data__info'>
        300개 이상의 숙소 · 5월 12일 - 5월 18일 · ￦100,000 ~ ￦1,000,000 · 게스트 3명
      </div>
      <div className='title'>지도에서 선택한 지역의 숙소</div>
      <div className='room__list'>{reserveRoomList}</div>
    </StyledReserveRoomList>
  );
};

export default ReserveRoomList;

const StyledReserveRoomList = styled.div`
  height: 100%;
  flex: 1;
  padding: 24px 40px 24px 24px;
  .data__info {
    font-size: ${({ theme }) => theme.fontSize.small};
    margin-bottom: 8px;
  }
  .title {
    font-weight: 700;
    font-size: ${({ theme }) => theme.fontSize.largest};
  }
  .room__list > div:not(:last-child) {
    border-bottom: ${({ theme }) => `1px solid ${theme.colors.gray5}`};
  }
`;

const data: roomType[] = [
  {
    id: 2,
    name: '백악관',
    photo: 'https://codesquad.kr/img/place/img_5225.jpg',
    condition: {
      guests: 4,
      bedroomCount: 2,
      bedCount: 2,
      bathroomCount: 2,
    },
    amenities: '주방,무선 인터넷,에어컨,헤어드라이기',
    chargePerNight: 100000,
    totalCharge: 0,
  },
  {
    id: 2,
    name: '백악관',
    photo: 'https://codesquad.kr/img/place/img_5225.jpg',
    condition: {
      guests: 4,
      bedroomCount: 2,
      bedCount: 2,
      bathroomCount: 2,
    },
    amenities: '주방,무선 인터넷,에어컨,헤어드라이기',
    chargePerNight: 100000,
    totalCharge: 0,
  },
  {
    id: 2,
    name: '백악관',
    photo: 'https://codesquad.kr/img/place/img_5225.jpg',
    condition: {
      guests: 4,
      bedroomCount: 2,
      bedCount: 2,
      bathroomCount: 2,
    },
    amenities: '주방,무선 인터넷,에어컨,헤어드라이기',
    chargePerNight: 100000,
    totalCharge: 0,
  },
  {
    id: 2,
    name: '백악관',
    photo: 'https://codesquad.kr/img/place/img_5225.jpg',
    condition: {
      guests: 4,
      bedroomCount: 2,
      bedCount: 2,
      bathroomCount: 2,
    },
    amenities: '주방,무선 인터넷,에어컨,헤어드라이기',
    chargePerNight: 100000,
    totalCharge: 0,
  },
];

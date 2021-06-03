import { useRecoilValue, useRecoilValueLoadable } from 'recoil';
import styled from 'styled-components';

import {
  accomodationList,
  isMiniSearchBarOpen,
} from '@recoil/atoms/searchResult';

import RoomInMap from './RoomInMap';

type image = {
  image_id: number;
  accomodation_id: number;
  image_url: string;
};

interface roomType {
  accomodation_id: number;
  accomodation_name: string;
  area: string;
  average_point: number;
  bath_room_count: number;
  bed_count: number;
  bed_room_count: number;
  image_url: image[];
  latitude: number;
  longitude: number;
  max_member_capacity: number;
  options: string[];
  price_per_day: number;
  residential_type: string;
  review_count: number;
  total_price: number;
}

const Accommodation = () => {
  const isMiniBarOpen = useRecoilValue(isMiniSearchBarOpen);
  const { state, contents } = useRecoilValueLoadable(accomodationList);
  const rooms = contents;

  return (
    <AccommodationWarp>
      <Desc isOpen={isMiniBarOpen}>500개이상 블라블라</Desc>
      <Title isOpen={isMiniBarOpen}>지도에서 선택한 지역의 숙소</Title>
      {state === 'hasValue' && (
        <Container>
          {rooms.map((room: roomType) => (
            <RoomInMap key={room.accomodation_id} room={room} />
          ))}
        </Container>
      )}
      {state === 'loading' && <div>숙소를 찾는중...</div>}
    </AccommodationWarp>
  );
};

export default Accommodation;

const AccommodationWarp = styled.section`
  margin: 0;
  padding: 32px 24px 0 24px;
  height: 1024px;
  width: 50%;
  overflow-y: scroll;

  &::-webkit-scrollbar {
    display: none;
  }
`;

const Container = styled.div`
  display: flex;
  flex-direction: column;
  width: 684px;
  height: 806px;
`;

const Title = styled.h3<display>`
  display: ${({ isOpen }) => (isOpen ? '' : 'none')};
  margin: 8px 0 32px 0;
  color: ${({ theme }) => theme.color.gray3};
  font-weight: ${({ theme }) => theme.fontWeight.bold};
  font-size: ${({ theme }) => theme.fontSize.xl};
`;

const Desc = styled.span<display>`
  display: ${({ isOpen }) => (isOpen ? '' : 'none')};
  color: ${({ theme }) => theme.color.gray3};
  font-size: ${({ theme }) => theme.fontSize.s};
`;

interface display {
  isOpen: boolean;
}

import styled from 'styled-components';

import { ReactComponent as Heart } from '@assets/heart.svg';

const RoomInMap = ({ room }: props) => {
  const {
    accomodation_id,
    accomodation_name,
    area,
    average_point,
    bath_room_count,
    bed_count,
    bed_room_count,
    image_url,
    latitude,
    longitude,
    max_member_capacity,
    options,
    price_per_day,
    residential_type,
    review_count,
    total_price,
  } = room;
  const province = area.split(',')[0];
  const optionsDescription = options.reduce(
    (str, currStr) => str + currStr + ', ',
    ''
  );

  return (
    <RoomContainer>
      <ImgWrap>
        <img src="./thumbnail.png" alt="thumbnail" />
      </ImgWrap>
      <Detail>
        <Desc>
          <Icon>
            <Heart />
          </Icon>
          <span>{`${province}의 ${residential_type}`}</span>
          <h6>{accomodation_name}</h6>
          <span>최대인원 {max_member_capacity}명</span>
          <span>{optionsDescription}</span>
        </Desc>
        <Review>{`${average_point} 후기 ${review_count}개`}</Review>
        <PriceNotice>
          <span>{`${price_per_day} / 박`}</span>
          <span>{`총액 ${total_price}원`}</span>
        </PriceNotice>
      </Detail>
    </RoomContainer>
  );
};

export default RoomInMap;

const RoomContainer = styled.div`
  display: flex;
`;

const ImgWrap = styled.div`
  width: 330px;
  height: 200px;
`;

const Detail = styled.div`
  margin-left: 24px;
  display: flex;
  flex-direction: column;
  position: relative;
`;

const Desc = styled.div`
  display: flex;
  flex-direction: column;
  width: 354px;

  h6 {
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
  }
`;

const Icon = styled.div`
  top: 0;
  right: 0;
  position: absolute;
`;

const PriceNotice = styled.div`
  display: flex;
  flex-direction: column;
  text-align: right;
  bottom: 0;
  right: 0;
  position: absolute;
`;

const Review = styled.div`
  bottom: 0;
  left: 0;
  position: absolute;
`;

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

interface props {
  room: roomType;
}

import styled from 'styled-components';

import { ReactComponent as Heart } from '@assets/heart.svg';
import { roomType } from '@components/SearchResult/types';

const RoomInMap = ({ room }: props) => {
  const {
    accomodation_name,
    area,
    average_point,
    image_url,
    max_member_capacity,
    options,
    price_per_day,
    residential_type,
    review_count,
    total_price,
  } = room;
  const province = area.split(',')[0];
  const imageURL = image_url[0].image_url;
  const optionsDescription = options
    .reduce((str, currStr) => str + currStr + ', ', '')
    .slice(0, -2); // 쉼표, 공백 삭제

  return (
    <RoomContainer>
      <ImgWrap>
        <img src={imageURL} alt="roomImage" />
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
          <span>{`${price_per_day.toLocaleString()} / 박`}</span>
          <span>{`총액 ${total_price}원`}</span>
        </PriceNotice>
      </Detail>
    </RoomContainer>
  );
};

export default RoomInMap;

const RoomContainer = styled.div`
  display: flex;
  width: 100%;
  height: 248px;

  &:not(first-child) {
    padding: 24px 0;
  }

  &:last-child {
    padding-bottom: 0;
  }
`;

const ImgWrap = styled.div`
  width: 330px;
  height: 200px;

  img {
    width: 100%;
    height: 100%;
  }
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

interface props {
  room: roomType;
}

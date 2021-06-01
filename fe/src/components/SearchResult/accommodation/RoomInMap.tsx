import styled from 'styled-components';

import { ReactComponent as Heart } from '@assets/heart.svg';

const RoomInMap = () => {
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
          <span>서초구의 아파트 전체</span>
          <h6>Spacious and COmfortable cozy house #14</h6>
          <span>최대인원 3명</span>
          <span>주방 무선인터넷</span>
        </Desc>
        <Review>4.80 후기 127개</Review>
        <PriceNotice>
          <span>82953 / 박</span>
          <span>총액 112512asdfasdf5125</span>
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

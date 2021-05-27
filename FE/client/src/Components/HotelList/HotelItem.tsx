import styled from 'styled-components';

const HotelItem = () => {
  return (
    <HotelItemWrapper>
      <ImageWrapper>
      </ImageWrapper>
      <HotelDescWrapper>
        <Location>
          서초구의 아파트 전체
        </Location>
        <HotelTitle>
          #자가격리 #공부 # 강남 # 선릉역3분... # 파티 #역삼동
        </HotelTitle>
        <HotelOption>
          최대인원 3명 원룸 침대1개 욕실1개
        </HotelOption>
        <HotelOption>
          주방 무선인터넷 에어컨 헤어 드라이어
        </HotelOption>
        <FooterWrapper>
          <Grade>
            별점
          </Grade>
          <Price>
            <div>가격 / 박</div>
            <div>총액</div>
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
  & + &{
    border-top: 1px solid #E0E0E0;
  }
`;

const ImageWrapper = styled.div`
  width: 45%;
  height: 100%;
  border-radius: 10px;
  margin-right: 1.5rem;
  background:gray;
`;

const HotelDescWrapper = styled.div`
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
`;

const Price = styled.div`
  position: absolute;
  text-align: end;
  bottom:0;
  right:0;
`;
export default HotelItem;

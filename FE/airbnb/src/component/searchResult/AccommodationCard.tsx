import styled from "styled-components";
import { useRecoilValue } from "recoil";
import { regionNameState } from "state/atoms/positionAtoms";

interface Props {
  accommodationInfo: {
    name: string;
    maxPeople: number;
    type: string;
    numOfBed: number;
    numOfBathroom: number;
    price: number;
    mainImageUrl: string;
  };
}

function AccommodationCard({ accommodationInfo }: Props) {
  const { name, maxPeople, type, numOfBed, numOfBathroom, price, mainImageUrl } = accommodationInfo;
  const region = useRecoilValue(regionNameState);
  const regionArr = region.split(" ");
  const regionName = regionArr[regionArr.length - 1];

  const cardDetail = `${regionName}의 숙소 전체`;
  const cardInfo1 = `최대 인원 ${maxPeople}명•${type}•침대 ${numOfBed}개•욕실 ${numOfBathroom}개`;
  const cardInfo2 = "주방•무선 인터넷•에어컨•헤어드라이어";

  return (
    <CardContainer imgSrc={mainImageUrl}>
      <div className="card_img" />
      <div className="card_right">
        <div className="card_right_top">
          <div className="card_detail">{cardDetail}</div>
          <div className="card_title">{name}</div>
          <div className="card_info1">{cardInfo1}</div>
          <div className="card_info2">{cardInfo2}</div>
        </div>
        <div className="card_right_bottom">
          <div className="card_price">₩{price.toLocaleString()} / 박</div>
          <div className="card_total_price">총액 ₩1,493,159</div>
        </div>
      </div>
    </CardContainer>
  );
}

export default AccommodationCard;

interface cardType {
  imgSrc: string;
}

const CardContainer = styled.div<cardType>`
  padding: 20px 0;
  display: flex;
  position: relative;

  .card_img {
    width: 330px;
    height: 200px;
    border-radius: ${({ theme }) => theme.borderRadius.s};
    background: url(${({ imgSrc }) => imgSrc});
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
  }
  .card_right {
    width: 268px;
    padding-left: 24px;
  }
  .card_detail {
    ${({ theme }) => theme.ellipsis};
    font-size: ${({ theme }) => theme.fontSize.s};
    color: ${({ theme }) => theme.color.gray3};
    margin: 8px 0;
  }
  .card_title {
    ${({ theme }) => theme.ellipsis};
    width: 100%;
    margin-bottom: 8px;
    font-size: ${({ theme }) => theme.fontSize.l};
    color: ${({ theme }) => theme.color.gray1};
  }
  .card_info1,
  .card_info2 {
    font-size: ${({ theme }) => theme.fontSize.s};
    color: ${({ theme }) => theme.color.gray3};
    margin-bottom: 8px;
  }

  .card_right_bottom {
    width: 120px;
    height: 40px;
    position: absolute;
    right: 0;
    bottom: 24px;
  }
  .card_price {
    position: absolute;
    right: 0;
  }
  .card_price {
    position: absolute;
    right: 0;
    font-size: ${({ theme }) => theme.fontSize.l};
  }
  .card_total_price {
    position: absolute;
    right: 0;
    bottom: 0;
    font-size: ${({ theme }) => theme.fontSize.s};
    color: ${({ theme }) => theme.color.gray3};
  }
`;

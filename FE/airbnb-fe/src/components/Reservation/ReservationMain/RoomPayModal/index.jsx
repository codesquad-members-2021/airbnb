import { useContext } from 'react';
import styled from 'styled-components';
import getRegex from '../../../utils/getRegex';
import { ReservationContext } from '../..';

const RoomMapPayModal = () => {
  const { match, payModalData } = useContext(ReservationContext);
  const getDiscountPrice = (charge, days, percent) => {
    return Math.floor(parseInt(charge) * percent * 0.01 * Math.floor(days / 7));
  };
  const totalFee = payModalData.chargePerDay * payModalData.days;
  const discountWeek = getDiscountPrice(
    payModalData.chargePerDay,
    payModalData.days,
    20
  );
  const cleaningFee = getDiscountPrice(
    payModalData.chargePerDay,
    payModalData.days,
    4
  );
  const serviceFee = getDiscountPrice(
    payModalData.chargePerDay,
    payModalData.days,
    12
  );
  const roomTaxFee = getDiscountPrice(
    payModalData.chargePerDay,
    payModalData.days,
    8
  );

  return (
    <RoomMapPayModalDiv className="paymodal">
      <RoomModalTop>
        <RoomModalTopPriceReview>
          <div>
            <PerDayPrice>{`₩${getRegex(
              payModalData.chargePerDay
            )}`}</PerDayPrice>{' '}
            / 박
          </div>
          <RoomModalTopReview>{`후기 ${payModalData.reviewCount}개`}</RoomModalTopReview>
        </RoomModalTopPriceReview>
        <RoomModalInput>
          <CheckIn>
            <div>체크인</div>
            <InputResult>{match.params.checkIn}</InputResult>
          </CheckIn>
          <CheckOut>
            <div>체크아웃</div>
            <InputResult>{match.params.checkOut}</InputResult>
          </CheckOut>
          <People>
            <div>인원</div>
            <InputResult>
              {parseInt(match.params.adults) + parseInt(match.params.children)}
              명
            </InputResult>
          </People>
        </RoomModalInput>
      </RoomModalTop>
      <RoomReserveBtn>예약하기</RoomReserveBtn>
      <RoomPayDiv>
        <PriceMention>예약 확정 전에는 요금이 청구되지 않습니다.</PriceMention>
        <PriceDiv>
          <PriceTitle>{`₩${payModalData.chargePerDay} X ${payModalData.days} 박`}</PriceTitle>
          <PriceContent>{`₩${getRegex(totalFee)}`}</PriceContent>
        </PriceDiv>
        <PriceDiv>
          <PriceTitle>20% 주 단위 요금 할인</PriceTitle>
          <PriceContent>{`₩${getRegex(discountWeek)}`}</PriceContent>
        </PriceDiv>
        <PriceDiv>
          <PriceTitle>청소비</PriceTitle>
          <PriceContent>{`₩${getRegex(cleaningFee)}`}</PriceContent>
        </PriceDiv>
        <PriceDiv>
          <PriceTitle>서비스 수수료</PriceTitle>
          <PriceContent>{`₩${getRegex(serviceFee)}`}</PriceContent>
        </PriceDiv>
        <PriceDiv>
          <PriceTitle>8%숙박세와 수수료</PriceTitle>
          <PriceContent>{`₩${getRegex(roomTaxFee)}`}</PriceContent>
        </PriceDiv>
        <LineDiv />
      </RoomPayDiv>
      <PriceDiv>
        <PriceTotalTitle>총 합계</PriceTotalTitle>
        <PriceTotalContent>
          ₩
          {getRegex(
            totalFee - discountWeek + cleaningFee + serviceFee + roomTaxFee
          )}
        </PriceTotalContent>
      </PriceDiv>
    </RoomMapPayModalDiv>
  );
};

const RoomMapPayModalDiv = styled.div`
  width: 400px;
  height: 542px;
  position: fixed;
  left: 50%;
  top: 50%;
  padding: 24px;
  background-color: ${({ theme }) => theme.colors.white};
  border-radius: 10px;
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
    0px 0px 4px rgba(51, 51, 51, 0.05);
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  -moz-transform: translate(-50%, -50%);
  -o-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
`;
const PerDayPrice = styled.span`
  font-weight: bold;
  font-size: ${({ theme }) => theme.fontSizes.M};
`;

const RoomModalTop = styled.div``;

const RoomModalTopPriceReview = styled.div`
  display: flex;
  justify-content: space-between;
`;

const RoomModalTopReview = styled.span`
  color: ${({ theme }) => theme.colors.gray3};
  font-size: ${({ theme }) => theme.fontSizes.TS};
  text-decoration-line: underline;
`;

const RoomModalInput = styled.div`
  display: grid;
  grid-template-columns: 1fr 1fr;
  grid-template-rows: 1fr 1fr;
  border: 1px solid #c0c0c0;
  border-radius: 10px;
  margin-top: 1rem;
  font-weight: bold;
  font-size: ${({ theme }) => theme.fontSizes.TS};
`;

const CheckIn = styled.div`
  border-bottom: 1px solid #c0c0c0;
  padding: 0.5rem 1rem;
  border-right: 1px solid #c0c0c0;
`;

const CheckOut = styled.div`
  border-bottom: 1px solid #c0c0c0;
  padding: 0.5rem 1rem;
`;

const People = styled.div`
  padding: 0.5rem 1rem;
  grid-column: 1/3;
`;

const InputResult = styled.div`
  font-size: ${({ theme }) => theme.fontSizes.XXS};
  color: ${({ theme }) => theme.colors.gray2};
  font-weight: normal;
`;

const PriceMention = styled.div`
  color: ${({ theme }) => theme.colors.gray3};
  text-align: center;
  margin-bottom: 27px;
  font-size: ${({ theme }) => theme.fontSizes.TS};
`;
const RoomReserveBtn = styled.button`
  background: #333333;
  border-radius: 10px;
  width: 352px;
  height: 55px;
  margin-top: 1rem;
  color: ${({ theme }) => theme.colors.white};
  background-color: ${({ theme }) => theme.colors.gray1};
  font-weight: bold;
  cursor: pointer;
  font-size: ${({ theme }) => theme.fontSizes.XS};
`;
const RoomPayDiv = styled.div`
  margin: 1rem 0 1.5rem 0;
`;
const PriceDiv = styled.div`
  display: flex;
  justify-content: space-between;
  margin-bottom: 0.5rem;
  color: ${({ theme }) => theme.colors.gray1};
  font-size: ${({ theme }) => theme.fontSizes.XS};
`;
const PriceTitle = styled.span`
  font-weight: 400;
  line-height: 23px;
  text-decoration-line: underline;
`;

const LineDiv = styled.div`
  border-bottom: 1px solid #c0c0c0;
  width: 22rem;
  margin: 0.8rem 0;
`;
const PriceTotalTitle = styled.span`
  font-size: ${({ theme }) => theme.fontSizes.XS};
  font-weight: 700;
  text-decoration-line: underline;
`;
const PriceTotalContent = styled.span`
  font-size: ${({ theme }) => theme.fontSizes.XS};
  font-weight: 700;
`;

const PriceContent = styled.span``;
export default RoomMapPayModal;

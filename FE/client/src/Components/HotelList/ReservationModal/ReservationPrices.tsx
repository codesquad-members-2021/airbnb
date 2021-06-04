import React from 'react'
import styled from 'styled-components';


const ReservationPrices = ({ price, dayCount }: { price: number; dayCount: number; }) => {
  return (
    <>
      <Prices>
        <div>₩{price.toLocaleString()} x {dayCount || 1}박</div>
        <div>₩{(price * (dayCount || 1)).toLocaleString()}</div>
      </Prices>
      <Prices>
        <div>청소비</div>
        <div>₩{Math.floor((price * (dayCount || 1) * 0.03)).toLocaleString()}</div>
      </Prices>
      <Prices>
        <div>서비스 수수료</div>
        <div>₩{Math.floor((price * (dayCount || 1) * 0.15)).toLocaleString()}</div>
      </Prices>
      <Prices>
        <div>숙박세와 수수료</div>
        <div>₩{Math.floor((price * (dayCount || 1) * 0.02)).toLocaleString()}</div>
      </Prices>

      <Hr />
      <TotalPrice>
        <div>총 합계</div>
        <div>₩{Math.floor((price * (dayCount || 1) * 1.2)).toLocaleString()}</div>
      </TotalPrice>
    </>
  )
}

const Prices = styled.div`
  display:flex;
  justify-content: space-between;
  margin-bottom: 4px;
  & > div:first-child{
    text-decoration: underline;
  }  
`;

const Hr = styled.hr`
  border-top: 1px solid #E0E0E0;
`;

const TotalPrice = styled.div`
  font-weight: 700;
  font-size: 18px;
  display:flex;
  justify-content: space-between;
  & > div:first-child{
    text-decoration: underline;
  }  
`;
export default ReservationPrices;

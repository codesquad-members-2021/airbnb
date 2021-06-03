import React, { useCallback, useRef } from 'react'
import styled from 'styled-components';
import ReservationUserInfo from './ReservationUserInfo';
import ReservationPrices from './ReservationPrices';

type ReservationModalType = {
  showReservationModalState: boolean;
  setShowReservationModalState: (state: boolean) => void;
  hotelInfoState: {
    price: number;
    reviewCount: number;
    dayCount: number;
  }
}

const ReservationModal = ({ showReservationModalState, setShowReservationModalState, hotelInfoState }: ReservationModalType) => {
  const BackgroundRef = useRef(null);
  const handleClickHideReservationModal = useCallback(({ target }) => {
    if (target !== BackgroundRef.current) return;
    setShowReservationModalState(false);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);
  const {price, reviewCount, dayCount} = hotelInfoState;
  return (
    <ReservationModalBackground
      ref={BackgroundRef}
      onClick={handleClickHideReservationModal}
      {...{ showReservationModalState }}>
      <ReservationModalWrapper>
        <ModalHeader>
          <div>
            <OneDayPrice>₩{price.toLocaleString()}</OneDayPrice>&nbsp; / 박
          </div>
          <ReviewCount>
            후기 {reviewCount}개
          </ReviewCount>
        </ModalHeader>

        <ReservationUserInfo />

        <ReservationPrices {...{dayCount, price}}/>

      </ReservationModalWrapper>
    </ReservationModalBackground>
  )
}

type ReservationBackgroundType = {
  showReservationModalState: boolean;
}

const ReservationModalBackground = styled.div<ReservationBackgroundType>`
  position: fixed;
  display: ${(props) => props.showReservationModalState ? 'block' : 'none'};
  top:0;
  bottom:0;
  right:0;
  left:0;
  background:rgba(0, 0, 0, 0.4);
  z-index:1;
`;

const ReservationModalWrapper = styled.div`
  position: relative;
  width: 400px;
  padding: 24px;
  margin:auto;
  background: #fff;
  top:50%;
  transform: translateY(-50%);
  border-radius: 10px;
`;

const ModalHeader = styled.div`
  display:flex;
  margin-bottom: 30px;
  place-items: baseline;
  justify-content: space-between;
`;

const OneDayPrice = styled.span`
  font-weight: 700;
  font-size: 20px;
`;

const ReviewCount = styled.div`
  font-weight:700;
  font-size: 12px;
  color:#828282;
  text-decoration: underline;
`;



export default React.memo(ReservationModal);

import { Box } from "@material-ui/core";
import styled from "styled-components";
import HotelPopUpItem from "./HotelPopUpItem";

const HotelPopUp = () => {
  return (
    <StyledHotelDetail>
      <Modal>
      <div>
            <Prcie>70,358</Prcie> /박
          </div>
        <StyledReservationData>
         
          <Box width="100%" borderBottom="1px solid gray" display="flex">
            <Box width="50%" borderRight="1px solid gray">
              <HotelPopUpItem title="체크인" subitle="2021. 6.4" />
            </Box>
            <Box width="50%">
              <HotelPopUpItem title="체크아웃" subitle="2021. 6.4" />
            </Box>
          </Box>

          <Box width="100%">
            <HotelPopUpItem title="인원" subitle="2021. 6.4" />
          </Box>
        </StyledReservationData>
        <ReservationBtn>예약하기</ReservationBtn>
        <Subtitle>예약 확전 전에는 요금이 청구되지 않습니다.</Subtitle>
      </Modal>
    </StyledHotelDetail>
  );
};

export default HotelPopUp;

const Prcie = styled.span`
  font-size: 2rem;
  font-weight: 700;
`;

const StyledHotelDetail = styled.div`
  position: fixed;
  top: 0;
  left: 0;
  z-index: 999999;
  width: 100%;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: rgba(0, 0, 0, 0.5);
`;
const StyledReservationData = styled.div`
  border: ${({ theme }) => theme.border.Gray4};
  border-radius: 1rem;
  display: flex;
  flex-direction: column;
  width: 80%;
`;

const Subtitle = styled.span`
  font-weight: 400;
  font-size: 0.8rem;
  color: ${({ theme }) => theme.color.Gray3};
`;
const Modal = styled.div`
  width: 35rem;
  height: 45rem;
  border-radius: 3rem;
  background-color: white;
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
`;

const ReservationBtn = styled.button`
  background-color: #333333;
  color: white;
  width: 80%;
  height: 4rem;
  border-radius: 1rem;
  font-size: 2rem;
  font-weight: 700;
`;

import styled from "styled-components";
import { roomPriceClickState, searchBarClickState } from "recoil/Atoms";
import { useRecoilValue, useSetRecoilState } from "recoil";
const RoomPriceModal = () => {
  const isClicked = useRecoilValue(roomPriceClickState);
  return isClicked ? <ModalLayout>데이지~~</ModalLayout> : <></>;
};
const ModalLayout = styled.div`
  position: absolute; //relative는 SearchBarLayout 입니다
  top: 100%;
  width: 493px;
  height: 364px;
  right: 0;
  z-index: 1;
  overflow: hidden;
  margin-top: 1.2rem;
  background: #ffffff;
  box-shadow: rgb(0 0 0 / 20%) 0px 6px 20px;
  border-radius: 40px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
`;
export default RoomPriceModal;

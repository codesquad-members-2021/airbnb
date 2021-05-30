import PriceRange from 'components/SearchBar/RoomPrice/PriceRange';
import styled from "styled-components";
import { roomPriceClickState, searchBarClickState } from "recoil/Atoms";
import { useRecoilValue, useSetRecoilState } from "recoil";

const RoomPriceModal = () => {
  const isClicked = useRecoilValue(roomPriceClickState);
  return isClicked
  ? <ModalLayout>
    {/* 데이지 최고~~~~~~~ */}
    <div className="price-modal-title">가격 범위</div>
    <div className="price-range">₩100,000 ~ 1,000,000+</div>
    <div className="price-average">평균 1박 요금은 ₩{}입니다.</div>
    <PriceRange/>
    </ModalLayout>
  : <></>;
};
const ModalLayout = styled.div`
  position: absolute; //relative는 SearchBarLayout 입니다
  top: 100%;
  /* width: 450px; */
  right: 0;
  z-index: 1;
  overflow: hidden;
  margin-top: 1.2rem;
  background: #ffffff;
  box-shadow: rgb(0 0 0 / 20%) 0px 6px 20px;
  border-radius: 40px;
  display: flex;
  align-items: left;
  flex-direction: column;
  padding: 4rem;

  & > div {
    width: 35rem;
    padding: 2rem;
    color: #555;
  }

  .price-modal-title {
    font-weight: 700;
    font-size: 1.5rem;
  }

  .price-range {
    font-size: 1.5rem;
    padding-bottom: 0;
  }

  .price-average {
    padding-top: 1rem;
    font-size: 1.3rem;
    color: #979292b3;
  }
`;
export default RoomPriceModal;

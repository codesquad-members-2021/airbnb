import InputItem from "../InputItem";
import Modal from "components/common/Modal";
import { css } from "styled-components";
import { useState, useEffect } from "react";
import { MouseEvent } from "react";
import { useRecoilValue, useResetRecoilState } from "recoil";
import PriceContent from "./PriceContent";
import {
  priceData,
  priceSelector,
  SearchBarHoverData,
} from "atoms/searchbarAtom";
const PriceInput = () => {
  const [toggle, setToggle] = useState<Boolean>(false);
  const priceValue = useRecoilValue(priceSelector);

  const resetData = useResetRecoilState(SearchBarHoverData);
  const handleClick = (event: MouseEvent | Event) => {
    setToggle(!toggle);
  };
  useEffect(() => {
    if (!toggle) resetData();
  }, [toggle, resetData]);
  return (
    <>
      <InputItem
        w="20%"
        title="요금"
        subtitle={priceValue}
        onClick={handleClick}
      />
      <Modal
        toggle={toggle}
        handleClick={handleClick}
        br="40px"
        position={ModalPosition}
      >
        <PriceContent />
      </Modal>
    </>
  );
};

export default PriceInput;

const ModalPosition = css`
  top: 115%;
  right: 21%;
`;

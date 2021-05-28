import InputItem from "../InputItem";
import Modal from "components/common/Modal";
import { css } from "styled-components";
import { useState } from "react";
import { MouseEvent } from "react";
import PriceContent from "./PriceContent";
const PriceInput = () => {
  const [toggle, setToggle] = useState<Boolean>(false);

  const handleClick = (event: MouseEvent | Event) => {
    setToggle(!toggle);
  };

  return (
    <>
      <InputItem
        w="20%"
        title="요금"
        subtitle="금액대 설정"
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

import InputItem from "../InputItem";
import Modal from "components/common/Modal";
import { css } from "styled-components";
import { useState } from "react";
import { MouseEvent } from "react";

const LocationInput = () => {
  const [toggle, setToggle] = useState<Boolean>(false);

  const handleClick = (event: MouseEvent | Event) => {
    setToggle(!toggle);
  };

  return (
    <>
      <InputItem
        w="30%"
        title="위치"
        subtitle="어디로 가시겠습니까?"
        onClick={handleClick}
      />
      <Modal
        toggle={toggle}
        handleClick={handleClick}
        br="40px"
        position={ModalPosition}
      >
        <div></div>
      </Modal>
    </>
  );
};

export default LocationInput;

const ModalPosition = css`
  top: 115%;
  right: 35%;
`;

import Modal from "components/common/Modal";
import { css } from "styled-components";
import { useState } from "react";
import { MouseEvent } from "react"
import InputItem from "../InputItem";

const PeopleInput = () => {
  const [toggle, setToggle] = useState<Boolean>(false);

  const handleClick = (event: MouseEvent | Event) => {
    setToggle(!toggle);
  };

  return (
    <>
      <InputItem
        w="30%"
        title="인원수"
        subtitle="게스트 추가"
        onClick={handleClick}
      />
      <Modal
        toggle={toggle}
        handleClick={handleClick}
        br="0.5rem"
        position={ModalPosition}
      >
        <div></div>
      </Modal>
    </>
  );
};

export default PeopleInput;

const ModalPosition = css`
  top: 115%;
  right: 5rem;
`;

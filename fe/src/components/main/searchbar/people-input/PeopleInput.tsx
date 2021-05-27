import Modal from "components/common/Modal";
import { css } from "styled-components";
import { useState } from "react";
import { MouseEvent } from "react";
import InputItem from "../InputItem";
import PeopleList from "./PeopleList";
import { useRecoilValue } from "recoil";
import { PeopleDataSelector } from "atoms/searchbarAtom";
const PeopleInput = () => {
  const [toggle, setToggle] = useState<Boolean>(false);
  const PeopleData = useRecoilValue(PeopleDataSelector);
  const handleClick = (event: MouseEvent | Event) => {
    setToggle(!toggle);
  };

  return (
    <>
      <InputItem
        w="20%"
        title="인원수"
        subtitle={PeopleData}
        onClick={handleClick}
      />
      <Modal
        toggle={toggle}
        handleClick={handleClick}
        br="40px"
        position={ModalPosition}
      >
        <PeopleList />
      </Modal>
    </>
  );
};

export default PeopleInput;

const ModalPosition = css`
  top: 115%;
  right: 0;
`;

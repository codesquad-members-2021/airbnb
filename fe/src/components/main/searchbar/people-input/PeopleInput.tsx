import Modal from "components/common/Modal";
import { css } from "styled-components";
import { useState, useEffect } from "react";
import { MouseEvent } from "react";
import InputItem from "../InputItem";
import PeopleList from "./PeopleList";
import { useRecoilValue } from "recoil";
import { PeopleDataSelector } from "atoms/searchbarAtom";
import { useResetRecoilState } from "recoil";
import { SearchBarHoverData } from "atoms/searchbarAtom";
const PeopleInput = () => {
  const [toggle, setToggle] = useState(false);
  const PeopleData = useRecoilValue(PeopleDataSelector);
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

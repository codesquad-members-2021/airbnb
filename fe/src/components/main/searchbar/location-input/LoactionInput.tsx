import Modal from "components/common/Modal";
import { css } from "styled-components";
import { MouseEvent, useState, useEffect } from "react";
import LocationDefalut from "./LocationDefalut";
import { useResetRecoilState } from "recoil";
import { SearchBarHoverData } from "atoms/searchbarAtom";
import LocationInputItem from "../LocationInputItem";

const LocationInput = () => {
  const [toggle, setToggle] = useState(false);

  const resetData = useResetRecoilState(SearchBarHoverData);

  const handleClick = (event: MouseEvent | Event) => {
    setToggle(!toggle);
  };
  useEffect(() => {
    if (!toggle) resetData();
  }, [toggle, resetData]);

  return (
    <>
      <LocationInputItem
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
        <LocationDefalut />
      </Modal>
    </>
  );
};

export default LocationInput;

const ModalPosition = css`
  top: 115%;
  left: 0;
`;

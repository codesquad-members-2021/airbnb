import Modal from "components/common/Modal";
import { css } from "styled-components";
import { MouseEvent, useState, useEffect } from "react";
import LocationDefalut from "./LocationDefalut";
import { useRecoilValue, useResetRecoilState } from "recoil";
import { locationDataSelector, SearchBarHoverData } from "atoms/searchbarAtom";
import LocationInputItem from "../LocationInputItem";

const LocationInput = () => {
  const [toggle, setToggle] = useState(false);
  const locationValue = useRecoilValue(locationDataSelector);
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
        subtitle={locationValue}
        setToggle={setToggle}
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

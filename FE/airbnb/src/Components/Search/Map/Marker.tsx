import React, { useCallback } from "react";
import { useRecoilValue, useSetRecoilState } from "recoil";
import {
  searchState,
  showAccomodationModalState,
  // accomodationModalDataState,
} from "@/Components/Search/SearchStore";
import { InfoBox } from "@react-google-maps/api";
import { Map as S } from "@/Components/Search/SearchStyles";

const Marker = () => {
  const accomodations = useRecoilValue(searchState);
  const setShowAccomodationModalFlag = useSetRecoilState(
    showAccomodationModalState
  );
  // const setAccomodationModalData = useSetRecoilState(
  //   accomodationModalDataState
  // );
  // setAccomodationModalData()

  const handleClick = useCallback(() => {
    setShowAccomodationModalFlag(true);
  }, [setShowAccomodationModalFlag]);

  const infoBoxOptions = {
    closeBoxURL: "",
    disableAutoPan: true,
    boxStyle: {
      boxShadow:
        "0px 0px 4px rgba(204, 204, 204, 0.5), 0px 2px 4px rgba(0, 0, 0, 0.25)",
      padding: "4px 8px",
      background: "#fff",
      borderRadius: "8px",
      fontWeight: "700",
    },
  };

  return (
    <>
      {accomodations.length > 0
        ? accomodations.map((item) => (
            <InfoBox
              key={item.roomId}
              position={{
                lat: item.location.latitude,
                lng: item.location.longitude,
              }}
              options={infoBoxOptions}
            >
              <S.Marker onClick={handleClick}>
                ₩{item.price.toLocaleString()}
              </S.Marker>
            </InfoBox>
          ))
        : null}
    </>
  );
};

const MarkerMemo = React.memo(Marker);

export default MarkerMemo;

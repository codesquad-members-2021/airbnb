import { useRecoilValue } from "recoil";
import { searchState } from "@/Components/Search/SearchStore";
import { InfoBox } from "@react-google-maps/api";
import { Map as S } from "@/Components/Search/SearchStyles";

const Marker = () => {
  const accomodations = useRecoilValue(searchState);

  const test = () => {
    console.log("clicked!");
  };

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
    <S.Marker onClick={test}>
      {accomodations.map((item) => (
        <InfoBox
          key={item.roomId}
          position={{
            lat: item.location.latitude,
            lng: item.location.longitude,
          }}
          options={infoBoxOptions}
        >
          <div>₩{item.price.toLocaleString()}</div>
        </InfoBox>
      ))}
    </S.Marker>
  );
};

export default Marker;

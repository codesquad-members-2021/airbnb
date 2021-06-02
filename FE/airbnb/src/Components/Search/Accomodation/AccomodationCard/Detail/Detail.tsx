import MaxPeople from "./MaxPeople";
import OneRoom from "./OneRoom";
import Bed from "./Bed";
import Bath from "./Bath";
import Kitchen from "./Kitchen";
import HairDryer from "./HairDryer";
import AirConditioner from "./AirConditioner";
import WiFi from "./WiFi";
import { Accomodation as S } from "@/Components/Search/SearchStyles";

interface Props {
  detail: any;
}

const Detail = ({ detail }: Props) => {
  return (
    <S.Detail>
      <div>
        <MaxPeople maxPeople={detail.maxPeople} />
        <OneRoom isOneRoom={detail.oneRoom} />
        <Bed bedCount={detail.bedCount} />
        <Bath bathCount={detail.bathCount} />
      </div>
      <Kitchen isKitchen={detail.kitchen} />
      <HairDryer isHairDryer={detail.hairDryer} />
      <AirConditioner isAirConditioner={detail.airConditioner} />
      <WiFi isWiFi={detail.wiFi} />
    </S.Detail>
  );
};

export default Detail;

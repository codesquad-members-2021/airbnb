import { GoogleMap, LoadScript } from "@react-google-maps/api";
import Marker from "./Marker";
import { Map as S } from "@/Components/Search/SearchStyles";

const Map = () => {
  const mapStyles = {
    height: "100%",
    width: "100%",
  };
  const defaultCenter = {
    lat: 35.95,
    lng: 128.25,
  };

  return (
    <S.Map>
      <LoadScript googleMapsApiKey="AIzaSyD37oGlJzlo7R1b5Bt1JbESshRnuF6vlxk">
        <GoogleMap
          mapContainerStyle={mapStyles}
          zoom={7}
          center={defaultCenter}
        >
          <Marker />
        </GoogleMap>
      </LoadScript>
    </S.Map>
  );
};

export default Map;

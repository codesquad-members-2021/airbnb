import { useEffect } from "react";
import styled from "styled-components";
import { useRecoilValue, useRecoilState } from "recoil";
import { latitudeState, longitudeState, regionNameState } from "state/atoms/positionAtoms";

declare global {
  interface Window {
    kakao: any;
  }
}

interface resultType {
  address_name: string;
  code: string;
}

function Map() {
  const latitude = useRecoilValue(latitudeState);
  const longitude = useRecoilValue(longitudeState);
  const [regionName, setRegionName] = useRecoilState(regionNameState);
  useEffect(() => {
    let container = document.getElementById("map");
    let options = {
      center: new window.kakao.maps.LatLng(latitude, longitude),
      level: 3,
    };
    new window.kakao.maps.Map(container, options);
  }, [latitude, longitude]);

  useEffect(() => {
    const geocoder = new window.kakao.maps.services.Geocoder();
    const callback = (result: resultType[], status: string | null) => {
      if (status === window.kakao.maps.services.Status.OK) {
        setRegionName(result[0].address_name);
      } else {
        console.log("status is not ok");
      }
    };
    geocoder.coord2RegionCode(longitude, latitude, callback);
  }, [latitude, longitude]);

  return (
    <MapContainer>
      <div id="map" style={{ width: "720px", height: "100vh" }}></div>
      <div className="region_name">{regionName}</div>
    </MapContainer>
  );
}

export default Map;

const MapContainer = styled.div`
  width: 50%;
  position: absolute;
  right: 0;
  .region_name {
    position: absolute;
    z-index: 5;
    top: 30px;
    right: 30px;
    padding: 20px;
    background-color: rgba(255, 255, 255, 0.85);
    border-radius: 10px;

    font-weight: bold;
    color: ${({ theme }) => theme.color.gray1};
  }
`;

import { useState, useRef, useEffect } from 'react';
import styled from 'styled-components';

// import InfoMarker from './InfoMarker';
import { threeDigitsComma } from '../../util/util';

import { IRoomInfo } from '../../util/types/Room';
interface IMap {
  rooms: IRoomInfo[] | undefined
}

function Map({rooms}: IMap) {
  const $Map = useRef<HTMLDivElement>(null);
  const [isLoading, setIsLoading] = useState<boolean>(true)

  useEffect(() => {
    const src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyC0gklP2kVkwsNEKNDMh7UZctv29DIEqWM&libraries=&v=weekly";
    const $MapScript = document.createElement("script");
    $MapScript.src = src;
    // $MapScript.async = true;
    $Map.current?.append($MapScript);
    $MapScript.addEventListener("load", () => {
      
      // asyncImport("./InfoMarker");
      import("./InfoMarker").then(({default: InfoMarker}) => {
        initMap({InfoMarker});
      });
      
    })
  }, [])
  
  function initMap({InfoMarker}): void {
    if (navigator.geolocation) {
      
      navigator.geolocation.getCurrentPosition(
        (position: GeolocationPosition) => {
          setIsLoading(false);
          const pos = {
            lat: position.coords.latitude,
            lng: position.coords.longitude,
          };

          const map = new window.google.maps.Map(
            document.getElementById("map") as HTMLElement,
            { zoom: 10, center: pos }
          );
          
          // 방 마커
          rooms?.forEach((room) => {
            // new window.google.maps.Marker({
            //   position: {lat: room.latitude, lng: room.longitude}, map: map,
            // }); 
            const $Content = document.createElement("div");
            $Content.innerHTML = `${threeDigitsComma(room.salePrice)}원`;
            const infomarker = new InfoMarker(
              new window.google.maps.LatLng(room.latitude, room.longitude),
              $Content as HTMLElement
            );
            infomarker.setMap(map);
          });

          const marker = new window.google.maps.Marker({
            position: pos,
            map: map,
          });

          map.setZoom(15);
        },   
      );
    }
  }

  return (
    <MapLayout ref={$Map}>
      {isLoading && 
        <LoadingArea>
          <h1> 위치를 받아오는 중입니다 </h1>
          <img src="https://blog.kakaocdn.net/dn/N7xep/btqAGYNtd09/LbpK1NKJRUNVbhA3HYX6W0/img.gif" width="50%"/>
        </LoadingArea>
      }
      <GoogleMapArea id={"map"}/>
    </MapLayout>
  );
}


const MapLayout = styled.div`
  width: 100%;
  height: 100vh;

  .popup-bubble {
    position: absolute;
    top: 0;
    left: 0;
    transform: translate(-50%, -100%);
    
    background-color: white;
    padding: 5px;
    border-radius: 5px;
    font-family: sans-serif;
    overflow-y: auto;
    max-height: 60px;
    box-shadow: 0px 2px 10px 1px rgba(0, 0, 0, 0.5);
  }

  .popup-bubble-anchor {
    position: absolute;
    width: 100%;
    bottom: 8px;
    left: 0;
  }

  .popup-bubble-anchor::after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    
    transform: translate(-50%, 0);
    
    width: 0;
    height: 0;
    
    border-left: 6px solid transparent;
    border-right: 6px solid transparent;
    border-top: 8px solid white;
  }

  .popup-container {
    cursor: pointer;
    height: 0;
    position: absolute;
    
    /* The max width of the info window. */
    width: 200px;
  }
`;

const LoadingArea = styled.div`
  width: 100%;
  height: 100vh;

  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
`
const GoogleMapArea = styled.div`
  width: 100%;
  height: 100vh;
`;

export default Map;
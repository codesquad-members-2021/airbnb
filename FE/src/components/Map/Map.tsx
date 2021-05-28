import { useState, useRef, useEffect } from 'react';
import styled from 'styled-components';

function Map() {
  const $Map = useRef<HTMLDivElement>(null);
  const [isLoading, setIsLoading] = useState<boolean>(true)

  useEffect(() => {
    const src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyC0gklP2kVkwsNEKNDMh7UZctv29DIEqWM&libraries=&v=weekly";
    const $MapScript = document.createElement("script");
    $MapScript.src = src;
    // $MapScript.async = true;
    $Map.current?.append($MapScript);
    $MapScript.addEventListener("load", () => {
      initMap();
    })
    
  }, [])
  
  function initMap(): void {
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

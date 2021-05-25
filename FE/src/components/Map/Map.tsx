import { useState, useRef, useEffect } from 'react';
import styled from 'styled-components';

function Map() {
  const $Map = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyC0gklP2kVkwsNEKNDMh7UZctv29DIEqWM&libraries=&v=weekly";
    const $MapScript = document.createElement("script");
    $MapScript.src = src;
    // $MapScript.async = true;
    $Map.current?.append($MapScript);
    $MapScript.addEventListener("load", () => {
      console.log(window.google);
      initMap();
    })
    
  }, [])
  
  function initMap(): void {
    
    const uluru = { lat: -25.344, lng: 131.036 };
    const map = new window.google.maps.Map(
      document.getElementById("map") as HTMLElement,
      { zoom: 4, center: uluru }
    );
  
    // The marker, positioned at Uluru
    const marker = new window.google.maps.Marker({
      position: uluru,
      map: map,
    });
  }  


  return (
    <MapLayout ref={$Map}>
      <GoogleMapArea id={"map"}/>
    </MapLayout>
  );
}

const MapLayout = styled.div`
  width: 100%;
  height: 100vh;
`;
const GoogleMapArea = styled.div`
  width: 100%;
  height: 100vh;
`;


export default Map;

import { useState, useRef, useEffect } from 'react';
import styled from 'styled-components';

// import InfoMarker from './InfoMarker';

function Map({rooms}) {
  const $Map = useRef<HTMLDivElement>(null);
  const [isLoading, setIsLoading] = useState<boolean>(true)

  useEffect(() => {
    const src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyC0gklP2kVkwsNEKNDMh7UZctv29DIEqWM&libraries=&v=weekly";
    const $MapScript = document.createElement("script");
    $MapScript.src = src;
    // $MapScript.async = true;
    $Map.current?.append($MapScript);
    $MapScript.addEventListener("load", () => {
      

      class InfoMarker extends google.maps.OverlayView {
        position: google.maps.LatLng;
        containerDiv: HTMLDivElement;
      
        constructor(position: google.maps.LatLng, content: HTMLElement) {
          super();
          this.position = position;
      
          content.classList.add("popup-bubble");
      
          // This zero-height div is positioned at the bottom of the bubble.
          const bubbleAnchor = document.createElement("div");
          bubbleAnchor.classList.add("popup-bubble-anchor");
          bubbleAnchor.appendChild(content);
      
          // This zero-height div is positioned at the bottom of the tip.
          this.containerDiv = document.createElement("div");
          this.containerDiv.classList.add("popup-container");
          this.containerDiv.appendChild(bubbleAnchor);
      
          // Optionally stop clicks, etc., from bubbling up to the map.
          InfoMarker.preventMapHitsAndGesturesFrom(this.containerDiv);
        }
      
        /** Called when the popup is added to the map. */
        onAdd() {
          this.getPanes()!.floatPane.appendChild(this.containerDiv);
        }
      
        /** Called when the popup is removed from the map. */
        onRemove() {
          if (this.containerDiv.parentElement) {
            this.containerDiv.parentElement.removeChild(this.containerDiv);
          }
        }
      
        /** Called each frame when the popup needs to draw itself. */
        draw() {
          const divPosition = this.getProjection().fromLatLngToDivPixel(
            this.position
          )!;
      
          // Hide the popup when it is far out of view.
          const display =
            Math.abs(divPosition.x) < 4000 && Math.abs(divPosition.y) < 4000
              ? "block"
              : "none";
      
          if (display === "block") {
            this.containerDiv.style.left = divPosition.x + "px";
            this.containerDiv.style.top = divPosition.y + "px";
          }
      
          if (this.containerDiv.style.display !== display) {
            this.containerDiv.style.display = display;
          }
        }
      }

      initMap(InfoMarker);



    })
  }, [])
  
  


  function initMap(InfoMarker): void {
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
          rooms.forEach((room) => {
            // new window.google.maps.Marker({
            //   position: {lat: room.latitude, lng: room.longitude},
            //   map: map,
            // }); 
            const infomarker = new InfoMarker(
              new window.google.maps.LatLng(room.latitude, room.longitude),
              document.getElementById("content") as HTMLElement
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

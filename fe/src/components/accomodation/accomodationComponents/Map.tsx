import React, { useEffect, useRef, useState } from 'react';
import styled from 'styled-components';
interface IMap {
    mapType: google.maps.MapTypeId;
    mapTypeControl?: boolean;
}

type GoogleLatLng = google.maps.LatLng;
type GoogleMap = google.maps.Map;

const Map = (props: IMap) => {
    const { mapType, mapTypeControl } = props;

    const ref = useRef<HTMLDivElement>(null);
    const [map, setMap] = useState<GoogleMap>();

    useEffect(() => {
        if (!map) defaultMapStart();
    }, [map]);

    const initMap = (zoomLevel: number, address: GoogleLatLng): void => {
        if (ref.current) {
            setMap(
                new google.maps.Map(ref.current, {
                    zoom: zoomLevel,
                    center: address,
                    mapTypeControl,
                    streetViewControl: false,
                    rotateControl: false,
                    scaleControl: true,
                    fullscreenControl: false,
                    panControl: false,
                    zoomControl: true,
                    gestureHandling: 'cooperative',
                    mapTypeId: mapType,
                    draggableCursor: 'pointer',
                }),
            );
        }
    };

    const defaultMapStart = (): void => {
        const defaultAddress = new google.maps.LatLng(12.2, 13.3);
        initMap(5, defaultAddress);
    };

    return (
        <MapContainer>
            <MapContent ref={ref}>map</MapContent>
        </MapContainer>
    );
};

export default Map;

const MapContainer = styled.div`
    display: flex;
    justify-content: center;
`;

const MapContent = styled.div`
    width: 100%;
    height: 100%;
    background: #ddd;
`;

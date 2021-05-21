import { useCallback, useState, useEffect } from 'react';
import styled from 'styled-components';
import { GoogleMap, useJsApiLoader,LoadScript } from '@react-google-maps/api';
import GOOGLE_MAP_API_KEY from '../../utils/googleMapAPIKey';

const containerStyle = {
  width: '50vw',
  height: '90vh'
};

const center = {
  lat: 37,
  lng: 127
};

const SearchMap = () => {
  const { isLoaded } = useJsApiLoader({
    googleMapsApiKey: GOOGLE_MAP_API_KEY
  })
  const [map, setMap] = useState(null);

  const onLoad = useCallback(function callback(map) {
    const bounds = new window.google.maps.LatLngBounds();
    map.fitBounds(bounds);
    setMap(map)
  }, []);

  const onUnmount = useCallback(function callback(map) {
    setMap(null)
  }, []);

  return (
    <SearchMapWrapper>
     <LoadScript
      googleMapsApiKey={GOOGLE_MAP_API_KEY}
    >
      <GoogleMap
        mapContainerStyle={containerStyle}
        center={center}
        zoom={13}
      >
        { /* Child components, such as markers, info windows, etc. */ }
        <></>
      </GoogleMap>
    </LoadScript>
    </SearchMapWrapper>
  )
}

const SearchMapWrapper = styled.div`
`;


export default SearchMap;

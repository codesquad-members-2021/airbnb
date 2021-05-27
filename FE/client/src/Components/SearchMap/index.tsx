import { useCallback, useState, useEffect } from 'react';
import styled from 'styled-components';
import { GoogleMap, useJsApiLoader, LoadScript } from '@react-google-maps/api';
import GOOGLE_MAP_API_KEY from '@/utils/googleMapAPIKey';


const containerStyle = {
  width: '50vw',
  height: '89vh',
};

const centerPosition = {
  lat: 37,
  lng: 127
};

const SearchMap = () => {
  return (
    <SearchMapWrapper>
      <LoadScript
        googleMapsApiKey={GOOGLE_MAP_API_KEY}
      >
        <GoogleMap
          mapContainerStyle={containerStyle}
          center={centerPosition}
          zoom={13}
        >
        </GoogleMap>
      </LoadScript>
    </SearchMapWrapper>
  )
}

const SearchMapWrapper = styled.div`
  position: fixed;
  right:0;
  top: 6.4rem;
`;


export default SearchMap;

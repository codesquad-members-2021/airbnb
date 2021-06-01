import { useCallback, useState } from 'react';
import styled from 'styled-components';
import { GoogleMap, LoadScript } from '@react-google-maps/api';
import GOOGLE_MAP_API_KEY from '@/utils/googleMapAPIKey';
import { userInfoAtom } from '@/recoil/atoms';
import { useRecoilState } from 'recoil';

const containerStyle = {
  width: '50vw',
  height: '89vh',
};

const SearchMap = () => {
  const [{ x, y }, setUserInfoState] = useRecoilState(userInfoAtom);
  const [mapInstance, setMapInstance] = useState<any>(null)

  const centerPosition = {
    lat: Number(x),
    lng: Number(y)
    // eslint-disable-next-line react-hooks/exhaustive-deps
  };

  const handleMapControl = useCallback(() => {
    if (!mapInstance) return;
    const bounds = mapInstance.getBounds();
    const westLocation = bounds.getSouthWest().lng();
    const eastLocation = bounds.getNorthEast().lng();
    const distance = (eastLocation - westLocation) / 2;
    setUserInfoState((state: any) => ({
      ...state,
      x: mapInstance.center.lat(),
      y: mapInstance.center.lng(),
      zoom: distance
    }))

    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [mapInstance]);

  return (
    <SearchMapWrapper>
      <LoadScript
        googleMapsApiKey={GOOGLE_MAP_API_KEY}
      >
        <GoogleMap
          onLoad={(map) => setMapInstance(map)}
          mapContainerStyle={containerStyle}
          center={centerPosition}
          zoom={13}
          onDragEnd={handleMapControl}
          onZoomChanged={handleMapControl}
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

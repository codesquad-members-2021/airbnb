import { useCallback, useState } from 'react';
import styled from 'styled-components';
import { GoogleMap, LoadScript, InfoBox } from '@react-google-maps/api';
import GOOGLE_MAP_API_KEY from '@/utils/googleMapAPIKey';
import { userInfoAtom } from '@/recoil/atoms';
import { useRecoilState, useRecoilValueLoadable } from 'recoil';
import { fetchHotelListSelector } from '@/recoil/fetchAtoms';

const containerStyle = {
  width: '50vw',
  height: '89vh',
};

const infoBoxOptions = {
  closeBoxURL: '',
  disableAutoPan: true,
  boxStyle: {
    boxShadow: '0px 0px 4px rgba(204, 204, 204, 0.5), 0px 2px 4px rgba(0, 0, 0, 0.25)',
    padding: '.25rem .75rem',
    background: '#fff',
    borderRadius: '.5rem'
  }
}

const googleMapOptions = {
  fullscreenControl: false,
  mapTypeControl: false,
  streetViewControl:false,
  zoomControlOptions:{
    position: 3
  }
}

const SearchMap = () => {
  const [{ x, y }, setUserInfoState] = useRecoilState(userInfoAtom);
  const [mapInstance, setMapInstance] = useState<any>(null)
  const hotelListLoadable = useRecoilValueLoadable(fetchHotelListSelector);

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
          options={googleMapOptions}
        >
          {hotelListLoadable.state === 'hasValue' &&
            hotelListLoadable.contents.map(({ coordinate: { x, y }, price }: any, idx: number) => {
              return (
                <InfoBox position={{ lat: x, lng: y }} key={`marker-${idx}`} options={infoBoxOptions}>
                  <div>₩{price.toLocaleString()}</div>
                </InfoBox>
              )
            })
          }
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

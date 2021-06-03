import { useCallback, useState } from 'react';
import styled from 'styled-components';
import { GoogleMap, LoadScript, InfoBox } from '@react-google-maps/api';
import GOOGLE_MAP_API_KEY from '@/utils/googleMapAPIKey';
import { userInfoAtom } from '@/recoil/atoms';
import { useRecoilState, useRecoilValueLoadable } from 'recoil';
import { fetchHotelListSelector } from '@/recoil/fetchAtoms';
import { Checkbox } from '@material-ui/core';
import { useHistory, useLocation } from 'react-router';
import qs from 'qs';

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
  streetViewControl: false,
  zoomControlOptions: {
    position: 3
  }
}

const SearchMap = () => {
  const [{ x, y }, setUserInfoState] = useRecoilState(userInfoAtom);
  const [mapInstance, setMapInstance] = useState<any>(null)
  const hotelListLoadable = useRecoilValueLoadable(fetchHotelListSelector);
  const [isFetchPossible, setIsFetchPossible] = useState(true);
  const history = useHistory();
  const location = useLocation();

  const centerPosition = {
    lat: Number(x),
    lng: Number(y)
    // eslint-disable-next-line react-hooks/exhaustive-deps
  };

  const historyUpdate = ({ distance }: { distance: number }) => {
    const queryParams = qs.parse(location.search, {
      ignoreQueryPrefix: true
    });
    const newQueries = {
      ...queryParams,
      x: mapInstance.center.lat(),
      y: mapInstance.center.lng(),
      zoom: distance
    };
    history.push({
      search: qs.stringify(newQueries)
    });
  }

  const handleMapControl = useCallback(() => {
    if (!mapInstance) return;
    const bounds = mapInstance.getBounds();
    const westLocation = bounds.getSouthWest().lng();
    const eastLocation = bounds.getNorthEast().lng();
    const distance = (eastLocation - westLocation) / 2;
    historyUpdate({ distance });
    if (!isFetchPossible) return;
    setUserInfoState((state: any) => ({
      ...state,
      x: mapInstance.center.lat(),
      y: mapInstance.center.lng(),
      zoom: distance
    }))

    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [mapInstance, isFetchPossible]);

  return (
    <SearchMapWrapper>
      <MovingSearchChecker>
        <Checkbox
          defaultChecked
          color="default"
          style={{ transform: "scale(1.5)" }}
          onClick={() => setIsFetchPossible(state => !state)}
        />

        지도를 움직이며 검색하기
      </MovingSearchChecker>

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
                  <PriceMark>₩{price.toLocaleString()}</PriceMark>
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

const PriceMark = styled.div`
  font-weight:700;
`;

const MovingSearchChecker = styled.div`
  position: absolute;
  padding: 10px 16px;
  background:#fff;
  border-radius: 8px;
  z-index: 1;
  top: 1%;
  font-weight:700;
  left: 50%;
  transform: translateX(-50%);
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
`;

export default SearchMap;

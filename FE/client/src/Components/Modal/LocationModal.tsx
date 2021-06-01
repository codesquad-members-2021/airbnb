import React, { useCallback } from 'react'
import styled from 'styled-components';
import { LocationType } from '../commons/baseType';
import { useRecoilValueLoadable, useSetRecoilState } from 'recoil';
import { locationAtom, LocationAtomType } from '@/recoil/atoms';
import LocationItem from './LocationItem';
import { fetchLocationSelector } from './../../recoil/fetchAtoms';
import { LocationItemType } from '@Components/commons/baseType';

const LocationModal = ({ location }: LocationType) => {
  const setLocationInfoState = useSetRecoilState(locationAtom);
  const locationListLoadable = useRecoilValueLoadable(fetchLocationSelector);

  const handleClickLocation = useCallback(({ name, coordinate }: LocationAtomType) => () => {
    setLocationInfoState({ name, coordinate });
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [])

  return (
    <LocationModalWrapper location={location}>
      {locationListLoadable.state === 'hasValue' &&
        locationListLoadable.contents.map(({ name, avatarUrl, coordinate }: LocationItemType, idx: number) => {
          return <LocationItem key={`locationItem-${idx}`} {...{ name, avatarUrl, coordinate, handleClickLocation }} />
        })
      }
      {locationListLoadable.state === 'loading' && <>loading...</>}

      {locationListLoadable.state === 'hasError' && <>error...</>}
    </LocationModalWrapper>
  )
}

const LocationModalWrapper = styled.div<LocationType>`
  display: ${({ location }) => location ? 'block' : 'none'};
  max-height: 27rem;
  width: 40%;
  background: #fff;
  padding: 3% 4%; 
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: 40px;
  overflow-y:scroll;
  &::-webkit-scrollbar{
    display:none;
  }
`;

export default LocationModal;

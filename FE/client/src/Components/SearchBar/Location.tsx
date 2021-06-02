import React, { useCallback } from 'react'
import styled from 'styled-components';
import { DivisionContent, DivisionTitle } from '@Components/commons/base';
import { IconButton } from '@material-ui/core';
import HighlightOffIcon from '@material-ui/icons/HighlightOff';
import { LocationType } from '../commons/baseType';
import { useRecoilState } from 'recoil';
import { locationAtom } from '@/recoil/atoms';

type LocationBarType = LocationType & {
  handleClickShowModal: (clickTarget: string) => () => void;
}

const Location = ({ location, handleClickShowModal }: LocationBarType) => {
  const [locationInfoState, setLocationInfoState] = useRecoilState(locationAtom);

  const handleClickResetLocation = useCallback(() => {
    setLocationInfoState({
      name: '',
      x: 0,
      y: 0
    })
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  return (
    <LocationWrapper onClick={handleClickShowModal('location')}>
      <span>
        <DivisionTitle>위치</DivisionTitle>
        <DivisionContent>
          {locationInfoState.name ? locationInfoState.name : '어디로 여행가세요?'}
        </DivisionContent>
      </span>
      <IconButton
        onClick={handleClickResetLocation}
        style={{ visibility: location ? 'visible' : 'hidden' }}>
        <HighlightOffIcon />
      </IconButton>
    </LocationWrapper>
  )
}

const LocationWrapper = styled.div`
  display:flex;
  width: 30%;
  margin-left: 2.5rem;
  border-right:1px solid #E0E0E0;
  justify-content: space-between;
  place-items: center;
  &:hover{
    cursor: pointer;
  }
`;

export default Location;

import { LocationAtomType } from '@/recoil/atoms';
import React from 'react'
import styled from 'styled-components';
import { LocationItemType } from '../commons/baseType';

type LocationPropType = LocationItemType & {
  handleClickLocation: ({ name, coordinate }: LocationAtomType) => () => void;
}

const LocationItem = ({ name, avatarUrl, coordinate, handleClickLocation }: LocationPropType) => {
  return (
    <LocationItemWrapper onClick={handleClickLocation({ name, coordinate })} >
      <ImageTag src={avatarUrl} alt="" />
      <span>{name}</span>
    </LocationItemWrapper>
  )
}

const LocationItemWrapper = styled.div`
  padding: .5rem 1rem .5rem 2rem;
  height: 4rem;
  display: flex;
  place-items: center;
  &:hover{
    cursor:pointer;
    background: #F5F5F7;
  }
`;

const ImageTag = styled.img`
  height: 3rem;
  width: 3rem;
  margin-right: 1rem;
  border-radius: 5px;
`;


export default LocationItem;

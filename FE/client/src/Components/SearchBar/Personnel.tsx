import React from 'react'
import styled from 'styled-components';
import { DivisionContent, DivisionTitle } from './../commons/base';
import HighlightOffIcon from '@material-ui/icons/HighlightOff';
import { IconButton } from "@material-ui/core";
import { PersonnelType } from '../commons/searchBarType';

type PersonnelModalType = PersonnelType & {
  handleClickShowModal: (clickTarget: string) => () => void;
}

const Personnel = ({ handleClickShowModal, personnel }: PersonnelModalType) => {
  return (
    <PersonnelWrapper onClick={handleClickShowModal('personnel')}>
      <span>
        <DivisionTitle>인원</DivisionTitle>
        <DivisionContent>게스트 추가</DivisionContent>
      </span>
      <IconButton style={{ visibility: personnel ? 'visible' : 'hidden' }}>
        <HighlightOffIcon />
      </IconButton>
    </PersonnelWrapper>
  )
}

const PersonnelWrapper = styled.div`
  display:flex;
  width: 20%;
  margin-left: .5rem;
  place-content: space-between;
  &:hover{
    cursor: pointer;
  }
`;

export default Personnel;

import { useCallback } from 'react';
import styled from 'styled-components';
import { DivisionContent, DivisionTitle } from './../commons/base';
import HighlightOffIcon from '@material-ui/icons/HighlightOff';
import { IconButton } from "@material-ui/core";
import { PersonnelType } from '@Components/commons/baseType';
import { useRecoilState } from 'recoil';
import { personnelAtom } from '@/recoil/atoms';
import { getNumberOfGuest } from '@/utils/serviceUtils';

type PersonnelModalType = PersonnelType & {
  handleClickShowModal: (clickTarget: string) => () => void;
}

const Personnel = ({ handleClickShowModal, personnel }: PersonnelModalType) => {
  const [personnelState, setPersonnelState] = useRecoilState(personnelAtom);
  const { adult, child, baby } = personnelState;

  const handleClickResetPersonnel = useCallback(() => {
    setPersonnelState({ adult: 0, child: 0, baby: 0 });
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  return (
    <PersonnelWrapper onClick={handleClickShowModal('personnel')}>
      <span>
        <DivisionTitle>인원</DivisionTitle>
        <DivisionContent>
          {getNumberOfGuest({ adult, child, baby })}
        </DivisionContent>
      </span>
      <IconButton
        style={{ visibility: personnel ? 'visible' : 'hidden' }}
        onClick={handleClickResetPersonnel}>
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

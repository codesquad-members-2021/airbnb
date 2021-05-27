import styled from 'styled-components';
import { DivisionContent, DivisionTitle } from './../commons/base';
import HighlightOffIcon from '@material-ui/icons/HighlightOff';
import { IconButton } from "@material-ui/core";
import { PersonnelType } from '@Components/commons/searchBarType';
import { useRecoilState } from 'recoil';
import { PersonnelAtom } from '@/recoil/atoms';

type PersonnelModalType = PersonnelType & {
  handleClickShowModal: (clickTarget: string) => () => void;
}

const Personnel = ({ handleClickShowModal, personnel }: PersonnelModalType) => {
  const [personnelState, setPersonnelState] = useRecoilState(PersonnelAtom);
  const { adult, child, baby } = personnelState;

  const guest = `게스트 ${adult + child}명`;
  const young = baby ? `, 유아 ${baby}명` : '';

  const handleClickResetPersonnel = () => {
    setPersonnelState({ adult:0, child:0, baby:0 });
  }

  return (
    <PersonnelWrapper onClick={handleClickShowModal('personnel')}>
      <span>
        <DivisionTitle>인원</DivisionTitle>
        <DivisionContent>
          {(adult === 0 && child === 0 && baby === 0)
            ? '게스트추가' : guest + young}
        </DivisionContent>
      </span>
      <IconButton style={{ visibility: personnel ? 'visible' : 'hidden' }} onClick={handleClickResetPersonnel}>
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

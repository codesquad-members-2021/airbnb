import styled from 'styled-components';
import { DivisionContent, DivisionTitle } from './../commons/base';
import HighlightOffIcon from '@material-ui/icons/HighlightOff';
import { IconButton } from "@material-ui/core";
import { ChargeType } from '../commons/searchBarType';

type ChargeModalType = ChargeType & {
  handleClickShowModal: (clickTarget: string) => () => void;
}

const Charge = ({ handleClickShowModal, charge }: ChargeModalType) => {
  return (
    <ChargeWrapper onClick={handleClickShowModal('charge')}>
      <span>
        <DivisionTitle>요금</DivisionTitle>
        <DivisionContent>금액대 설정</DivisionContent>
      </span>
      <IconButton style={{ visibility: charge ? 'visible' : 'hidden' }}>
        <HighlightOffIcon />
      </IconButton>
    </ChargeWrapper>
  )
}

const ChargeWrapper = styled.div`
  display:flex;
  width: 20%;
  margin-left: .5rem;
  border-right:1px solid #E0E0E0;
  place-content: space-between;
  &:hover{
    cursor: pointer;
  }
`;

export default Charge;

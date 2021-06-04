import { useCallback } from 'react';
import styled from 'styled-components';
import { DivisionContent, DivisionTitle } from './../commons/base';
import HighlightOffIcon from '@material-ui/icons/HighlightOff';
import { IconButton } from "@material-ui/core";
import { useRecoilState } from 'recoil';
import { ChargeType } from '@Components/commons/baseType';
import { rangeAtom } from '@/recoil/atoms';
import { getChargeRange } from '@/utils/serviceUtils';

type ChargeModalType = ChargeType & {
  handleClickShowModal: (clickTarget: string) => () => void;
}

const Charge = ({ handleClickShowModal, charge }: ChargeModalType) => {
  const [rangeState, setRangeState] = useRecoilState(rangeAtom);
  const {leftRange, rightRange} = rangeState;
  const handleClickResetCharge = useCallback(() => {
    setRangeState({ leftRange: 0, rightRange: 100 });
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  return (
    <ChargeWrapper onClick={handleClickShowModal('charge')}>
      <span>
        <DivisionTitle>요금</DivisionTitle>
        <DivisionContent>{getChargeRange({leftRange, rightRange})}</DivisionContent>
      </span>
      <IconButton style={{ visibility: charge ? 'visible' : 'hidden' }} onClick={handleClickResetCharge}>
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

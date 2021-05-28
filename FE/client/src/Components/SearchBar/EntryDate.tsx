import styled from 'styled-components';
import HighlightOffIcon from '@material-ui/icons/HighlightOff';
import { IconButton } from "@material-ui/core";
import { useRecoilState } from 'recoil';
import DateKind from './DateKind';
import { CalendarType } from '@Components/commons/baseType';
import { calendarClickAtom } from '@/recoil/atoms';
import { useCallback } from 'react';

type EntryDateType = CalendarType & {
  handleClickShowModal: (clickTarget: string) => () => void;
}

const EntryDate = ({ handleClickShowModal, entryDate }: EntryDateType) => {
  const [calendarClickState, setCalendarClickState] = useRecoilState(calendarClickAtom);
  const [checkInTime, checkOutTime] = calendarClickState;

  const handleClickDayReset = useCallback(() => setCalendarClickState([]), []);

  return (
    <EntryDateWrapper onClick={handleClickShowModal('entryDate')}>
      <DateKind kind="체크인" checkInTime={checkInTime} />
      <DateKind kind="체크아웃" checkOutTime={checkOutTime} />
      <IconButton onClick={handleClickDayReset} style={{ visibility: entryDate ? 'visible' : 'hidden' }}>
        <HighlightOffIcon />
      </IconButton>
    </EntryDateWrapper>
  )
}

const EntryDateWrapper = styled.div`
  display: flex;
  width: 40%;
  margin-left: 2.5rem;
  border-right:1px solid #E0E0E0;
`;

export default EntryDate;

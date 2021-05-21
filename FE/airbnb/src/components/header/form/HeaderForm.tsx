import styled from 'styled-components';
import FormColumn from './FormColumn';
import { IoSearch } from 'react-icons/io5';
import HoverBlock from '../HoverBlock';
import { useRecoilState, useSetRecoilState, useRecoilValue } from 'recoil';
import {
  reserveSelectState,
  reserveSelectStateTypes,
  reserveWithSelect,
} from '../../../recoil/headerAtom';
import FormLocation from './FormLocation';
import FormGuest from './FormGuest';
import FormCheckIn from './FormCheckIn';
import FormCheckOut from './FormCheckOut';
import FormPrice from './FormPrice';

const FORM_COLUMN: formColumn[] = [
  { title: '위치', description: '어디로 여행가세요' },
  { title: '체크인', description: '날짜' },
  { title: '체크아웃', description: '날짜' },
  { title: '요금', description: '금액대 설정' },
  { title: '인원', description: '게스트 추가' },
];
interface formColumn {
  title: string;
  description: string;
}

const HeaderForm = () => {
  // const reserveSelect = useRecoilValue(reserveSelectState);
  const [reserveSelect, selectReserve] = useRecoilState(reserveWithSelect);

  const handleClickCapture = (e: any): void => {
    const key = e.currentTarget.dataset.key;
    console.log(key);
    selectReserve(key);
  };

  return (
    <StyledHeaderForm reserveSelect={reserveSelect}>
      <FormLocation />
      <FormCheckIn />
      <FormCheckOut />
      <FormPrice />
      <FormGuest />
    </StyledHeaderForm>
  );
};

interface StyleProps {
  reserveSelect: reserveSelectStateTypes;
}

const StyledHeaderForm = styled.div<StyleProps>`
  display: grid;
  grid-template-columns: 1fr 0.5fr 0.5fr 0.5fr 0.7fr;
  margin: 0 auto;
  max-width: 1200px;
  border: ${({ theme }) => `1px solid ${theme.colors.gray4}`};
  border-radius: 60px;
  background-color: ${({ theme }) => theme.colors.white};
  & > div {
    position: relative;
  }
  & > div:not(:last-child)::before {
    position: absolute;
    height: 3rem;
    right: 0;
    top: 1rem;
    content: '';
    border-right: ${({ theme }) => `1px solid ${theme.colors.gray5}`};
  }
  & > div:not(:last-child):hover {
    &::before {
      border-right: none;
    }
  }
  /* & > div:first-child:hover {
    &::before {
      border-right: none;
    }
  }
  & > div:nth-child(2):hover {
    &::before {
      border-right: none;
    }
  } */
`;

export default HeaderForm;

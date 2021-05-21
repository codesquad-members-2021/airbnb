import styled from 'styled-components';
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

interface formColumn {
  title: string;
  description: string;
}

const HeaderForm = () => {
  // const reserveSelect = useRecoilValue(reserveSelectState);
  const [reserveSelect, selectReserve] = useRecoilState(reserveWithSelect);

  return (
    <StyledHeaderForm>
      <FormLocation />
      <FormCheckIn />
      <FormCheckOut />
      <FormPrice />
      <FormGuest />
    </StyledHeaderForm>
  );
};

interface StyleProps {
  reserveSelect?: reserveSelectStateTypes;
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
  & > div:not(:first-child)::before {
    position: absolute;
    height: 3rem;
    left: 0;
    top: 1rem;
    content: '';
    border-right: ${({ theme }) => `1px solid ${theme.colors.gray5}`};
  }
  & > div:not(:last-child):hover {
    &::before,
    & + div::before {
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

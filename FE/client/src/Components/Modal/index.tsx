import React, { useEffect } from 'react';
import styled from 'styled-components';
import Calendar from './Calendar';
import { useRecoilState } from 'recoil';
import { searchBarFocusAtom } from '../../recoil/atoms';
import ChargeModal from './ChargeModal';
import PersonnelModal from './PersonnelModal';
import { SearchBarType } from '../commons/searchBarType';

const Modal = () => {
  const [searchBarState, setSearchBarState] = useRecoilState(searchBarFocusAtom);
  const { entryDate, charge, personnel, focus } = searchBarState;

  const handleClickHideModal = (event: MouseEvent) => {
    const targetList = (event.target as HTMLElement);
    const checkTarget = targetList.closest('.Modal') || targetList.closest('.SearchBar');
    if (!checkTarget && focus) setSearchBarState(searchBar => ({ ...searchBar, focus: false }));
  }

  useEffect(() => {
    document.addEventListener('click', handleClickHideModal);
    return () => document.removeEventListener('click', handleClickHideModal);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [focus]);

  return (
    <ModalWrapper {...{ focus }} className="Modal">
      <Calendar {...{ entryDate }} />
      <ChargeModal {...{ charge }} />
      <PersonnelModal {...{ personnel }} />
    </ModalWrapper>
  )
}

// eslint-disable-next-line no-mixed-operators
const ModalWrapper = styled.div<SearchBarType>`
   width: 70%;
   min-width: 35rem;
   margin:auto;
   display: ${({ focus }) => focus ? 'block' : 'none'};
`;

export default Modal;

import React, { useEffect, useRef } from 'react';
import styled from 'styled-components';
import Calendar from './Calendar';
import { useRecoilState } from 'recoil';
import { searchBarFocusAtom, searchBarRefAtom } from '../../recoil/atoms';
import ChargeModal from './ChargeModal';
import PersonnelModal from './PersonnelModal';
import { SearchBarType } from '../commons/searchBarType';

const Modal = () => {
  const [searchBarState, setSearchBarState] = useRecoilState(searchBarFocusAtom);
  const [$searchBarRef] = useRecoilState(searchBarRefAtom);
  const $ModalWrapper = useRef<HTMLDivElement>(null);
  const { entryDate, charge, personnel, focus } = searchBarState;

  const handleClickHideModal = (event: MouseEvent) => {
    const targetList = (event.target as HTMLElement);
    const modalTarget = $ModalWrapper.current?.classList;
    const searchBarTarget = $searchBarRef?.current?.classList;
    let checkTarget: Element | null = null;
    modalTarget?.forEach(v => {
      if (!checkTarget) checkTarget = targetList.closest(`.${v}`);
    })
    searchBarTarget?.forEach(v => {
      if (!checkTarget) checkTarget = targetList.closest(`.${v}`);
    })
    if (!checkTarget && focus) setSearchBarState(searchBar => ({ ...searchBar, focus: false }));
  }

  useEffect(() => {
    document.addEventListener('click', handleClickHideModal);
    return () => document.removeEventListener('click', handleClickHideModal);
  }, [focus]);

  return (
    <ModalWrapper {...{ focus }} ref={$ModalWrapper}>
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

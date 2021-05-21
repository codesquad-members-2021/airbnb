import styled from 'styled-components';
import React, { useRef, useEffect, ReactElement } from 'react';
import { useSetRecoilState } from 'recoil';

import { ReservationBarBtnType } from './atoms';
import { SelectedBtn } from './atoms';

type ReservationBarDropPopupProps = {
  outsideBlacklist?: HTMLElement[],
  children: ReactElement
};

function ReservationBarDropPopup({ outsideBlacklist = [], children }: ReservationBarDropPopupProps): ReactElement {
  const ref = useRef<HTMLDivElement>(null);
  const setSelectedBtn = useSetRecoilState<ReservationBarBtnType|null>(SelectedBtn);

  useEffect(() => {
    document.addEventListener('mousedown', handleClickOutside);
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, []);

  const handleClickOutside = ({ target }: MouseEvent): void => {
    if (target === ref.current || ref.current?.contains(target as Node))
      return;

    for (const el of outsideBlacklist) {
      if (target === el || el.contains(target as Node))
        return;
    }

    setSelectedBtn(null);
  };

  return (
    <StyledReservationBarDropPopup ref={ref}>
      {children}
    </StyledReservationBarDropPopup>
  );
};

export default ReservationBarDropPopup;

const StyledReservationBarDropPopup = styled.div`
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  box-sizing: border-box;
  padding: 2.5rem;
  position: absolute;
  top: 6rem;
  left: 0;
  background-color: #ffffff;
  border-radius: 3rem;
`;

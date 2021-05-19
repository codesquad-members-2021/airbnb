import styled from 'styled-components';
import React, { useRef, useEffect, ReactElement } from 'react';
import { useSetRecoilState } from 'recoil';

import { SelectedBtnIdx } from './atoms';

type ReservationBarDropPopupProps = {
  outsideBlacklist?: HTMLElement[],
  children: ReactElement
};

function ReservationBarDropPopup({ outsideBlacklist = [], children }: ReservationBarDropPopupProps): ReactElement {
  const ref = useRef<HTMLDivElement>(null);
  const setSelectedIdx = useSetRecoilState<number|null>(SelectedBtnIdx);

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

    setSelectedIdx(null);
  };

  return (
    <StyledReservationBarDropPopup ref={ref}>
      {children}
    </StyledReservationBarDropPopup>
  );
};

export default ReservationBarDropPopup;

const StyledReservationBarDropPopup = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 2.5rem;
  position: absolute;
  top: 6rem;
  left: 0;
  background-color: #ffffff;
  border-radius: 3rem;
`;

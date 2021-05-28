import { useState } from 'react';
import { useRecoilState } from 'recoil';
import styled from 'styled-components';
import { ReactComponent as MinusBtn } from '../../../../assets/svg/Property 1=minus-circle.svg';
import { ReactComponent as PlusBtn } from '../../../../assets/svg/Property 1=plus-circle.svg';
import { guestState } from '../../../../recoil/headerAtom';

interface Props {
  guestData: {
    type: string;
    title: string;
    description: string;
  };
}

const GuestColumn = ({ guestData: { type, title, description } }: Props) => {
  const [guestCount, setGuestCount] = useRecoilState(guestState);

  const handlePlusClick = () => {
    setGuestCount((guestCount) => ({ ...guestCount, [type]: guestCount[type] + 1 }));
    if ((type === 'child' || type === 'infants') && guestCount.adult === 0) {
      setGuestCount((guestCount) => ({ ...guestCount, adult: guestCount.adult + 1 }));
    }
  };
  const handleMinusClick = () => {
    if (guestCount[type] - 1 < 0) return;
    if (type === 'adult' && !isAbleAdultMinus()) return;
    setGuestCount((guestCount) => ({ ...guestCount, [type]: guestCount[type] - 1 }));
  };

  const isAbleAdultMinus = () => {
    return (
      (guestCount.child === 0 && guestCount.infants === 0 && guestCount.adult > 0) ||
      guestCount.adult > 1
    );
  };

  const getIsAbleMinus = () => {
    let isAbleMinus = false;
    if (type === 'adult') {
      if (isAbleAdultMinus()) isAbleMinus = true;
      else isAbleMinus = false;
    } else {
      isAbleMinus = guestCount[type] > 0;
    }
    return isAbleMinus;
  };

  const isAbleMinus = getIsAbleMinus();

  return (
    <StyledGuestColumn isAbleMinus={isAbleMinus}>
      <div className='guest-info'>
        <div className='title'>{title}</div>
        <div className='description'>{description}</div>
      </div>
      <div className='guest-count'>
        <MinusBtn className='count-btn btn__minus' onClick={handleMinusClick} />
        <div className='count'>{guestCount[type]}</div>
        <PlusBtn className='count-btn btn__plus' onClick={handlePlusClick} />
      </div>
    </StyledGuestColumn>
  );
};

export default GuestColumn;

interface StyledProps {
  isAbleMinus: boolean;
}

const StyledGuestColumn = styled.div<StyledProps>`
  position: relative;
  display: flex;
  align-items: center;
  justify-content: space-between;
  width: 100%;
  user-select: none;
  .guest-info {
    .title {
      font-weight: 700;
      margin-bottom: 0.2rem;
    }
    .description {
      font-size: ${({ theme }) => theme.fontSize.small};
    }
  }
  .guest-count {
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: 116px;
    height: 36px;
    .count-btn {
      stroke: ${({ theme }) => theme.colors.gray3};
    }
    .count {
      font-size: ${({ theme }) => theme.fontSize.large};
      font-weight: 700;
    }
    .btn__minus {
      stroke: ${({ theme, isAbleMinus }) =>
        isAbleMinus ? theme.colors.gray3 : theme.colors.gray5};
    }
    .btn__plus:hover {
      stroke: ${({ theme }) => theme.colors.gray1};
    }
    .btn__minus:hover {
      stroke: ${({ theme, isAbleMinus }) => isAbleMinus && theme.colors.gray1};
    }
  }
  &:not(:last-child)::after {
    content: '';
    position: absolute;
    bottom: -1.4rem;
    width: 100%;
    border-bottom: ${({ theme }) => `1px solid ${theme.colors.gray5}`};
  }
`;

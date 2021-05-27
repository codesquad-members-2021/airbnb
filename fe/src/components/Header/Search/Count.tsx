import styled from 'styled-components';

import { ReactComponent as PlusCircle } from '@assets/plus-circle.svg';
import { ReactComponent as MinusCircle } from '@assets/minus-circle.svg';

import { useRecoilState } from 'recoil';
import { guestCountState } from '@recoil/atoms/guests';

type Props = {
  type: string;
};

const Count = ({ type }: Props) => {
  const [guestCount, setGuestCount] = useRecoilState(guestCountState);

  const getType = (guestType: string): string => {
    if (guestType === '성인') return 'adult';
    if (guestType === '어린이') return 'child';
    else return 'baby';
  };

  const currentType: string = getType(type);

  const handleClickPlus = (): void => {
    setGuestCount({
      ...guestCount,
      [currentType]: guestCount[currentType] + 1,
    });
  };

  const handleClickMinus = (): void => {
    if (guestCount[currentType] === 0) return;
    setGuestCount({
      ...guestCount,
      [currentType]: guestCount[currentType] - 1,
    });
  };

  return (
    <CountWrap>
      <MinusCircle onClick={handleClickMinus} />
      {guestCount[currentType]}
      <PlusCircle onClick={handleClickPlus} />
    </CountWrap>
  );
};

export default Count;

const CountWrap = styled.div`
  width: 116px;
  height: 36px;
`;

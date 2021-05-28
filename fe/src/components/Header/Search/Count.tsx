import styled from 'styled-components';

import { ReactComponent as PlusCircle } from '@assets/plus-circle.svg';
import { ReactComponent as MinusCircle } from '@assets/minus-circle.svg';

import { useRecoilState } from 'recoil';
import { guestCountState } from '@recoil/atoms/guests';

type Props = {
  guestID: string;
};

const Count = ({ guestID }: Props) => {
  const [guestCount, setGuestCount] = useRecoilState(guestCountState);
  const { adult, child, baby } = guestCount;

  const currentType: string = guestID;

  const handleClickPlus = (): void => {
    if (isBabyWithoutAdult()) increaseAdult();
    else
      setGuestCount({
        ...guestCount,
        [currentType]: guestCount[currentType] + 1,
      });
  };

  const handleClickMinus = (): void => {
    if (guestCount[currentType] === 0) return;
    if (checkGuardian()) return;
    setGuestCount({
      ...guestCount,
      [currentType]: guestCount[currentType] - 1,
    });
  };

  const increaseAdult = () => {
    setGuestCount({
      ...guestCount,
      adult: adult + 1,
      [currentType]: guestCount[currentType] + 1,
    });
  };

  const isBabyWithoutAdult = () => baby === 0 && currentType === 'baby';

  const checkGuardian = () => baby === 1 && adult === 1;

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
  display: flex;
  align-items: center;
  justify-content: space-evenly;
  width: 116px;
  height: 36px;
`;

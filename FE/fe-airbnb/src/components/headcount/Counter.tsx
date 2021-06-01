import { useContext } from 'react';

import { Center, Flex } from '@chakra-ui/layout';
import styled from 'styled-components';

// import PlusButton from '@components/PlusButton';
// import MinusButton from '@components/MinusButton';
import { ReactComponent as PlusIcon } from '../../icon/plus-circle.svg';
import { ReactComponent as MinusIcon } from '../../icon/minus-circle.svg';
import { HandleCountType, HeadCountProps } from './HeadCountTypes';
import { HeadCountContext } from '@components/searchBar/SearchBar';
import { guestCountStateType, HeadCountContextType } from '@components/searchBar/searchBarTypes';

function Counter({ guestType }: HeadCountProps) {
  const { guestCountState, setGuestCountState } = useContext<HeadCountContextType>(HeadCountContext);

  const handleCount = ({ guestType, count }: HandleCountType) => {
    if(setGuestCountState === null) throw Error('setGuestCountState가 null임!');
    setGuestCountState((guestCountState: guestCountStateType) => {
      const checkYoung = guestType === 'children' || guestType === 'infants';
      const checkParents = guestCountState.adults === 0;
      const result = { ...guestCountState, [guestType]: guestCountState[guestType] + count};
      return (checkYoung && checkParents && count === 1) ? { ...result, adults: 1 } : result;
    })
  }

  return (
    <Flex align="center">
      <MinusIcon onClick={() => handleCount({ guestType, count: -1 })}/>
      <Count>
        <Center>{guestCountState?.[guestType]}</Center>
      </Count>
      <PlusIcon onClick={() => handleCount({ guestType, count: 1 })}/>
    </Flex>
  )
}

const Count = styled.div`
  margin: 0 16px;
  width: 32px;
  font-weight: bold;
  font-size: ${({ theme }) => theme.fontSizes.L};
  color: ${({ theme }) => theme.colors.gray1};
`

export default Counter

import { Flex } from '@chakra-ui/layout';
import styled from 'styled-components';
import { dayNames } from '../../constant';

const DayNames = (props) => {
  return (
    <div>
      <Flex>
        {dayNames.map((dayName, i) => (
          <DayName key={i}>{dayName}</DayName>
        ))}
      </Flex>
    </div>
  );
};

const DayName = styled.div`
  color: ${({ theme }) => theme.colors.gray3};
  font-size: ${({ theme }) => theme.fontSizes.XS};
  width: 48px;
  height: 24px;
  display: flex;
  align-items: center;
  justify-content: center;
`;

export default DayNames;

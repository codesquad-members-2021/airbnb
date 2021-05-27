import { Flex } from '@chakra-ui/layout';
import styled from 'styled-components';

const CalendarHeader = ({ calendar }) => {
  function currYear() {
    return calendar.format('YYYY');
  }

  function currMonthName() {
    return calendar.format('MM');
  }

  return (
    <Title>
      <Flex>
        {currYear()}년 {currMonthName()}월
      </Flex>
    </Title>
  );
};

const Title = styled.caption`
  width: 336px;
  display: flex;
  justify-content: center;
  font-size: ${({ theme }) => theme.fontSizes.SM};
  font-weight: bold;
  margin-bottom: 24px;
`;

export default CalendarHeader;

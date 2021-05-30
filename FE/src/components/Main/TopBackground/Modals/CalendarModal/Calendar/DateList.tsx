import styled from 'styled-components';
import DefaultButton from '../../../../../Common/DefaultButton';

interface IDateList {
  arrDays: string[];
  arrDates: number[];
}

const DateList = ({ arrDays, arrDates, ...props }: IDateList) => {
  const dayItems = arrDays.map((day, i) => <DayItem key={i}>{day}</DayItem>);
  const dateItems = arrDates.map((date, i) => (
    <Item key={i}>
      <DateButton>{date || ''}</DateButton>
    </Item>
  ));

  return (
    <DateListLayout {...props}>
      {dayItems}
      {dateItems}
    </DateListLayout>
  );
};

export default DateList;

// --- Styled Components ---
const DateListLayout = styled.ul`
  display: grid;
  justify-content: center;
  grid-template-columns: repeat(7, 40px);
`;

const Item = styled.li`
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: ${({ theme }) => theme.fontSize.S};
  height: 40px;
`;

const DayItem = styled(Item)`
  color: ${({ theme }) => theme.colors.gray3};
`;

const DateButton = styled(DefaultButton)`
  font-weight: ${({ theme }) => theme.fontWeight.bold};
  border-radius: 50%;
  width: 100%;
  height: 100%;
  border: 1px solid blue;
`;

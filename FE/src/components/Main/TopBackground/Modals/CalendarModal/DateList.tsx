import styled from 'styled-components';

interface IDateList {
  arrDays: string[];
  arrDates: number[];
}

const DateList = ({arrDays, arrDates} : IDateList) => {
  const dayItems = arrDays.map((day) => <DayItem>{day}</DayItem>);

  return (
    <DateListLayout>
      {dayItems}
      {arrDates.map((date) => (
        <DateItem>{date || ''}</DateItem>
      ))}
    </DateListLayout>
  );
};

export default DateList;

// --- Styled Components ---
const DateListLayout = styled.ul`
  display: grid;
  grid-template-columns: repeat(7, 1fr);
  outline: 1px solid black;
`;

const Item = styled.li`
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: ${({ theme }) => theme.fontSize.S};
`;

const DayItem = styled(Item)`
  padding: 0 12px;
  color: ${({ theme }) => theme.colors.gray3};
`;

const DateItem = styled(Item)`
  padding: 12px;
  font-weight: ${({ theme }) => theme.fontWeight.bold};
`;

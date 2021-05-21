import styled from 'styled-components';

const DayOfTheWeek = () => {
  const weeks = ['일', '월', '화', '수', '목', '금', '토'];
  return (
    <WeekListWrap>
      {weeks.map((week) => (
        <WeekList key={week}>{week}</WeekList>
      ))}
    </WeekListWrap>
  );
};

export default DayOfTheWeek;

const WeekListWrap = styled.ul`
  margin: 1.5rem 0;
  display: flex;
  width: 100%;
`;

const WeekList = styled.li`
  ${({ theme }) => theme.flexCenter}
  width: 48px;
  height: 24px;
`;

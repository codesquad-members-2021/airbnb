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
  margin: 0 3rem;
  display: flex;
  width: 336px;
  height: 24px;
`;

const WeekList = styled.li`
  ${({ theme }) => theme.flexCenter}
  width: 48px;
  height: 24px;
  font-size: ${({ theme }) => theme.fontSize.s};
`;

import styled from 'styled-components';

type Prop = {
  children: React.ReactNode;
};

const Day = ({ children }: Prop) => {
  return <DayWrap>{children}</DayWrap>;
};

export default Day;

const DayWrap = styled.td`
  margin: 0;
  padding: 0;
  line-height: 48px;
  width: 48px;
  height: 48px;
  text-align: center;
`;

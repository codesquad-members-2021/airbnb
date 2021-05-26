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
  cursor: pointer;
  position: relative;

  &:hover {
    color: ${({ theme }) => theme.color.white};
  }

  &.clicked {
    color: ${({ theme }) => theme.color.white};
  }

  &.clicked::before {
    content: '';
    display: block;
    position: absolute;
    width: 48px;
    height: 48px;
    background-color: ${({ theme }) => theme.color.black};
    z-index: -1;
  }

  &.selected {
    color: ${({ theme }) => theme.color.black};
    background-color: ${({ theme }) => theme.color.gray6};
  }

  &::before {
    content: '';
    display: block;
    position: absolute;
    width: 48px;
    height: 48px;
    border-radius: ${({ theme }) => theme.borderRadius.s};
    z-index: -2;
  }

  &:hover::before {
    background-color: ${({ theme }) => theme.color.black};
  }
`;

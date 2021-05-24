import styled from 'styled-components';
import { ReactElement, RefObject } from 'react';
interface Props {
  toggleRef: RefObject<HTMLDivElement>;
  dataBtn: string;
}
const NavUserToggle = ({ toggleRef, dataBtn }: Props) => {
  const LOG_OUT_COLUMN: string[] = ['로그인'];
  const LOG_IN_COLUMN: string[] = ['예약 취소', '위시리스트', '로그아웃'];

  const columnList: ReactElement[] = LOG_IN_COLUMN.map((column, idx) => (
    <div key={column + idx}>{column}</div>
  ));

  return <StyledNavUserToggle ref={toggleRef}>{columnList}</StyledNavUserToggle>;
};

export default NavUserToggle;

const StyledNavUserToggle = styled.div`
  padding: 0.5 rem 0;
  position: absolute;
  right: 0;
  top: 2.2rem;
  width: 200px;
  background-color: ${({ theme }) => theme.colors.white};
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: 10px;
  z-index: 10;
  & > div {
    margin: 0 1rem;
    padding: 1rem 0;
  }
  & > div:not(:last-child) {
    border-bottom: ${({ theme }) => '1px solid' + theme.colors.gray4};
  }
`;

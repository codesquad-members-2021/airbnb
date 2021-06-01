import styled from 'styled-components';
import HeaderNav from '../header/nav/HeaderNav';
import ReserveForm from './ReserveForm';

interface Props {}

const ReserveHeader = (props: Props) => {
  return (
    <StyledReserveHeader>
      <div className='logo'>LOGO</div>
      <ReserveForm />
      <HeaderNav />
    </StyledReserveHeader>
  );
};

export default ReserveHeader;

const StyledReserveHeader = styled.div`
  z-index: 10;
  position: fixed;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 24px;
  top: 0;
  width: 100%;
  height: 94px;
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  background-color: ${({ theme }) => theme.colors.white};
  .logo {
    font-size: ${({ theme }) => theme.fontSize.largest};
    font-weight: 700;
  }
`;

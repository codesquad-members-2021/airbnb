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
  position: absolute;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 24px;
  top: 0;
  width: 100%;
  height: 94px;
  border-bottom: ${({ theme }) => `2px solid ${theme.colors.gray4}`};
  .logo {
    font-size: ${({ theme }) => theme.fontSize.largest};
    font-weight: 700;
  }
`;

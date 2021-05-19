import styled from 'styled-components';
import { CenterContainer } from '../util/utilStyles';
import { IoGlobeOutline } from 'react-icons/io5';
import HoverBlock from './HoverBlock';
import HeaderNav from './nav/HeaderNav';

const Header = () => {
  return (
    <StyledHeder>
      <div className='logo'>LOGO</div>
      <div className='tab'>
        <div>숙소</div>
        <div>체험</div>
        <div>온라인 체험</div>
      </div>
      <div className='nav'>
        <HoverBlock>호스트 되기</HoverBlock>
        <HoverBlock>
          <IoGlobeOutline />
        </HoverBlock>
        <HeaderNav />
      </div>
    </StyledHeder>
  );
};

const StyledHeder = styled(CenterContainer)`
  justify-content: space-between;
  height: 6rem;
  padding: 0 5rem;
  background-color: ${({ theme }) => theme.colors.red};
  .logo {
    font-size: ${({ theme }) => theme.fontSize.largest};
    font-weight: 700;
  }
  .tab,
  .nav {
    width: 11rem;
    display: flex;
    justify-content: space-between;
  }
  .nav {
    width: 13rem;
    font-size: ${({ theme }) => theme.fontSize.small};
    font-weight: 600;
    & > div {
      display: flex;
      align-items: center;
      justify-content: center;
    }
  }
`;

export default Header;

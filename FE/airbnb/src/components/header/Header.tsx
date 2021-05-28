import styled from 'styled-components';
import { CenterContainer } from '../util/utilStyles';
import { IoGlobeOutline } from 'react-icons/io5';
import HoverBlock from './HoverBlock';
import HeaderNav from './nav/HeaderNav';
import HeaderTabList from './tab/HeaderTabList';
import HeaderForm from './form/HeaderForm';

const Header = () => {
  return (
    <>
      <StyledHeader>
        <div className='logo'>LOGO</div>
        <HeaderTabList />
        <div className='nav'>
          <HoverBlock color='white' dataKey='host'>
            호스트 되기
          </HoverBlock>
          <HoverBlock color='white' dataKey='global'>
            <IoGlobeOutline />
          </HoverBlock>
          <HeaderNav />
        </div>
      </StyledHeader>
      <HeaderForm />
    </>
  );
};

const StyledHeader = styled(CenterContainer)`
  justify-content: space-between;
  height: 6rem;
  padding: 0 5rem;
  .logo {
    font-size: ${({ theme }) => theme.fontSize.largest};
    font-weight: 700;
  }
  .nav {
    display: flex;
    justify-content: space-between;
    width: 14.1rem;
    font-size: ${({ theme }) => theme.fontSize.small};
    font-weight: 600;
    & > div {
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 4px 12px;
      border-radius: 30px;
    }
  }
`;

export default Header;

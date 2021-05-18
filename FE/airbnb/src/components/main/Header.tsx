import styled from 'styled-components';
import { CenterContainer } from '../util/utilStyles';
import { SvgMenuBar, SvgUser } from '../svg/svg';
import { IoGlobeOutline } from 'react-icons/io5';
import HoverBlock from './HoverBlock';

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
        <div className='nav__user'>
          <SvgMenuBar />
          <SvgUser />
        </div>
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
    &__user {
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 4px 8px;
      background: ${({ theme }) => theme.colors.white};
      border: ${({ theme }) => `1px solid ${theme.colors.gray4}`};
      box-sizing: border-box;
      border-radius: 30px;
      margin-left: 12px;
      cursor: pointer;
    }
  }
`;

export default Header;

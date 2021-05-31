import styled from 'styled-components';
import DefaultButton from '../../../Common/DefaultButton';
import { ResponsiveFluid } from '../../../Common/ResponsiveFluid';
import { FiMenu, FiUser } from 'react-icons/fi';
import { ITextTopBackground } from '../../../../util/reference';
import {
  useMainDispatch,
  useMainState,
} from '../../../../contexts/MainContext';
import AuthModal from './AuthModal';

const Header = ({ headerTexts }: ITextTopBackground) => {
  const { authModalVisbile } = useMainState();
  const dispatch = useMainDispatch();
  const { logoOrBtnCaption: logo, menuItems } = headerTexts;
  const handleAuthButtonClick = () => dispatch({ type: 'TOGGLE_AUTH_MODAL_VISIBLE' });
  return (
    headerTexts && (
      <HeaderLayout>
        <LogoBlock>{logo}</LogoBlock>
        <HeaderMenuList>
          {menuItems.map((item, i) => (
            <HeaderMenuItem key={i}>{item.text}</HeaderMenuItem>
          ))}
        </HeaderMenuList>

        <AuthBlock>
          <AuthButton onClick={handleAuthButtonClick}>
            <div className="menu">
              <FiMenu />
            </div>
            <div className="user">
              <FiUser />
            </div>
          </AuthButton>
          {authModalVisbile && <AuthModal />}
        </AuthBlock>

      </HeaderLayout>
    )
  );
};

export default Header;

// --- Styled Components ---
const HeaderLayout = styled(ResponsiveFluid)`
  margin: 0 auto;
  padding: 24px 0;
  justify-content: space-between;
  align-items: center;
`;

const LogoBlock = styled.div`
  font-size: ${({ theme }) => theme.fontSize.SUBJECT};
  font-weight: ${({ theme }) => theme.fontWeight.bold2};
`;

const HeaderMenuList = styled.ul`
  display: flex;
  align-items: center;
  justify-content: space-between;
  font-size: ${({ theme }) => theme.fontSize.L};
`;

const HeaderMenuItem = styled.li`
  cursor: pointer;

  &:hover {
    color: ${({ theme }) => theme.colors.gray3};
  }
  & + & {
    margin-left: 24px;
  }
`;

const AuthBlock = styled.div`
  position: relative;
`;

const AuthButton = styled(DefaultButton)`
  cursor: pointer;

  display: flex;
  justify-content: space-between;
  align-items: center;
  column-gap: 8px;

  background-color: ${({ theme }) => theme.colors.white};
  border: 1px solid ${({ theme }) => theme.colors.gray4};
  border-radius: 24px;
  padding: 6px;

  div {
    display: flex;
    align-items: center;
  }
  .menu {
    font-size: ${({ theme }) => theme.fontSize.XL};
    padding-left: 6px;
  }
  .user {
    border-radius: 50%;
    font-size: 16px;
    background-color: ${({ theme }) => theme.colors.gray3};
    color: ${({ theme }) => theme.colors.white};
    padding: 5px;
  }
`;

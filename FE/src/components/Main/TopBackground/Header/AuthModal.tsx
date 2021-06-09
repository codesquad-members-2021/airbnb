import styled from 'styled-components';
import { Link } from '../../../../util/MyRouter';
import Modal from '../../../Common/Modal';

const AuthModal = ({ ...props }) => {
  return (
    <AuthModalLayout {...props}>
      <AuthMenuList>
        <AuthMenuItem>
          <Link to={"/search"}>위시리스트</Link>
        </AuthMenuItem>
        {/* moreItems.. */}
      </AuthMenuList>
    </AuthModalLayout>
  );
};

export default AuthModal;

// --- Styled Components ---
const AuthModalLayout = styled(Modal)`
  position: absolute;
  right: 0;
  left: -100%;
  margin-top: 10px;
  z-index: 1;

  padding: 16px 32px;
  border-radius: 10px;
  background-color: ${({ theme }) => theme.colors.white};
`;

const AuthMenuList = styled.ul`
  display: flex;
  flex-direction: column;
  align-items: center;
`;

const AuthMenuItem = styled.li`
  padding: 16px 0;

  & + & {
    border-top: 1px solid ${({ theme }) => theme.colors.gray4};
  }
`;

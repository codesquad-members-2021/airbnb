import styled from 'styled-components';
import { Link } from 'react-router-dom';

const Logo = () => {
  return (
    <Link to="/">
      <LogoImg src="./airbnb-logo.png" alt="logo" />
    </Link>
  );
};

export default Logo;

const LogoImg = styled.img`
  width: 150px;
  cursor: pointer;
  justify-self: center;
`;

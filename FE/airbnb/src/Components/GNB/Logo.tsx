import { Link } from "react-router-dom";
import { GNB as S } from "./GNBStlyes";

const Logo = () => {
  return (
    <Link to="/">
      <S.Logo>LOGO</S.Logo>
    </Link>
  );
};

export default Logo;

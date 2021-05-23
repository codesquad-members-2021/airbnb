import styled from "styled-components";
import { ReactComponent as Logo } from "components/common/Logo.svg";
import Login from 'components/Header/Login';
// type HeaderProps = {
//   title: string;
//   link: string;
// };
//: React.FunctionComponent<HeaderProps>

const Header = () => {
  const navText: Array<string> = ["숙소", "체험", "온라인 체험"];
  return (
    <>
      <HeaderLayout>
        <Logo width="100px" />
        <NavigatorLayout>
          {navText.map((text, idx) => {
            return <NavigatorList key={`nav-${idx}`}>{text}</NavigatorList>;
          })}
        </NavigatorLayout>
        <Login/>
      </HeaderLayout>
    </>
  );
};

const HeaderLayout = styled.div`
  outline: red solid;
  display: flex;
  justify-content: space-between;
  padding-top: 50px;
`;

const NavigatorLayout = styled.ul`
  display: flex;
`;
const NavigatorList = styled.li`
  outline: red solid 1px;
  width: 8rem;
  text-align: center;
  padding: 10px;
  font-size: 1rem;
  &:hover {
    font-weight: bold;
    text-decoration-line: underline;
  }
  cursor: pointer;

  @media (max-width: 1024px) {
    width: 8rem;
    font-size: 0.8rem;
    padding: 2%;
  }
`;

export default Header;

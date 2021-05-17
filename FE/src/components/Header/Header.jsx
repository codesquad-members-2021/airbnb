import styled from "styled-components";
import Logo from "./Logo";
import Menu from "./Menu";
import MyPage from "./MyPage"

const Header = () => (
	<HeaderWrapper>
		<Logo />
		<Menu />
    <MyPage />
	</HeaderWrapper>
);

const HeaderWrapper = styled.div`
	position: relative;
	width: 1440px;
	height: 94px;
`;

export default Header;

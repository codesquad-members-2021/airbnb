import React from 'react';
import styled from 'styled-components';
import Logo from './Logo';
import Menu from './Menu';
import MyPage from './MyPage';

const Header = () => {
    return (
        <HeaderWrapper>
            <Logo/>
            <Menu/>
            <MyPage/>
        </HeaderWrapper>
    );
}

const HeaderWrapper = styled.div`
    display:flex;
    justify-content:space-between;
    align-items:center;
`;

export default Header;

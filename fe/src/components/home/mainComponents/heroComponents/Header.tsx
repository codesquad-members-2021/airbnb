import React from 'react';
// import { Icon } from "@material-ui/core";
import LanguageIcon from '@material-ui/icons/Language';
import Account from './headerComponents/Account';
import styled from 'styled-components';

const Header = (): React.ReactElement => {
    return (
        <HeaderPage>
            <LeftHeader>
                <Logo href="/">airbnb</Logo>
            </LeftHeader>
            <RightHeader>
                <ToBeHost href="/">호스트되기</ToBeHost>
                <Globe>
                    <LanguageIcon />
                </Globe>
                <Account />
            </RightHeader>
        </HeaderPage>
    );
};

export default Header;

const HeaderPage = styled.div`
    display: flex;
    justify-content: space-between;
`;

const LeftHeader = styled.div``;

const RightHeader = styled.div`
    display: flex;
`;

const Logo = styled.a``;

const ToBeHost = styled.a``;

const Globe = styled.div``;

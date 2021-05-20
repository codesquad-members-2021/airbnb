import React from 'react';
// import { Icon } from "@material-ui/core";
import AccountCircleIcon from '@material-ui/icons/AccountCircle';
import MenuIcon from '@material-ui/icons/Menu';
import styled from 'styled-components';

const Account = (): React.ReactElement => {
    return (
        <Container>
            <MenuIcon />
            <AccountCircleIcon />
        </Container>
    );
};

export default Account;

const Container = styled.div`
    background: #fff;
`;

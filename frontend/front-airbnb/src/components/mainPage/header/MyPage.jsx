import React from 'react';
import styled from 'styled-components';
import { FaBars, FaUserCircle } from "react-icons/fa";

const MyPage = () => {
    return (
        <MyPageWrapper>
            <FaBars/>
            <FaUserCircle/>
        </MyPageWrapper>
    );
}

const MyPageWrapper = styled.div`
border:3px solid #bdbdbd;
background-color: white;
width:120px;
height:60px;
border-radius:50px;
display:flex;
align-items:center;
justify-content:space-between;
padding: 0 3px 0 20px;
size: 40px;
& > *:first-child {
    color:#828282;
    font-size:20px;
}
& > *:last-child {
    color:#828282;
    font-size:50px;
}
`;




export default MyPage;

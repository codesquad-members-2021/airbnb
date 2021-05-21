import React from 'react';
import styled from 'styled-components';
import PersonnelModal from '../modal/PersonnelModal';

const Personnel = () => {
    return (
        <PersonnelWrapper>
                <Title>인원</Title>
                <View>게스트추가</View>
                <PersonnelModal/>
        </PersonnelWrapper>
    );
}

const PersonnelWrapper = styled.button`
border-radius: 100px;
flex: auto;
height: auto;
display: flex;
flex-direction: column;
padding: 20px;
padding-left: 3%;
&:hover {
    background-color: #ebebeb;
}
`;

const Title = styled.span`
padding: 5px 0;
display:block;
font-weight: 500;
font-size: 20px;
`;
const View = styled.span``;

export default Personnel;

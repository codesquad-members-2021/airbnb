import React, { useContext, useEffect } from 'react';
import styled from 'styled-components';
import PersonnelModal from '../modal/PersonnelModal';
import useComponentVisible from "../modal/Modal"

const Personnel = () => {
    const {ref, isComponentVisible, setIsComponentVisible} = useComponentVisible(true);
    return (
        <PersonnelWrapper ref={ref}>
            <PersonnelBtn onClick={() => setIsComponentVisible(!isComponentVisible)}>
                <Title>인원</Title>
                <View>게스트추가</View>
                {!isComponentVisible && <PersonnelModal/>}
            </PersonnelBtn>
        </PersonnelWrapper>
    );
}


const PersonnelWrapper = styled.div`
flex: auto;
`;
const PersonnelBtn = styled.button`
display: flex;
border-radius: 100px;
width: 100%;
flex-direction: column;
padding: 20px;
padding-left: 15%;
&:hover {
    background-color: #ebebeb;
}
`

const Title = styled.span`
padding: 5px 0;
display:block;
font-weight: 500;
font-size: 20px;
`;
const View = styled.span``;

export default Personnel;

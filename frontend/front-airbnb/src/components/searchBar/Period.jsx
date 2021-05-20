import React from 'react';
import styled from 'styled-components';

const Period = () => {
    return (
        <PeriodWrapper>
            <CheckInBox>
                <Title>체크인</Title>
                <View>날짜입력</View>
            </CheckInBox>
            <CheckOutBox>
                <Title>체크아웃</Title>
                <View>날짜입력</View>
            </CheckOutBox>
        </PeriodWrapper>
    );
}

const PeriodWrapper = styled.button`
display:flex;
border-radius: 100px;
flex: 20%;
height: auto;
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

const CheckInBox = styled.div`
margin-right:10%`;
const CheckOutBox = styled.div``;

export default Period;

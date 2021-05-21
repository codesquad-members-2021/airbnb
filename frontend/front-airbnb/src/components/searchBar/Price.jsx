import React from 'react';
import styled from 'styled-components';
import PriceModal from '../modal/PriceModal';

const Price = () => {
    return (
        <PriceWrapper>
        <Title>요금</Title>
        <View>금액대 설정</View>
        <PriceModal/>
        </PriceWrapper>
    );
}

const PriceWrapper = styled.button`
display: flex;
flex-direction: column;
border-radius: 100px;
flex: auto;
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

export default Price;

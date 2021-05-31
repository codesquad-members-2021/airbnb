import React, { useContext ,useEffect} from 'react';
import styled from 'styled-components';
import PriceModal from '../modal/PriceModal';
import useComponentVisible from "../modal/Modal"


const Price = () => {
    const {ref, isComponentVisible, setIsComponentVisible} = useComponentVisible(true);
    return (
        <PriceWrapper ref={ref}>
            <PriceBtn  onClick={() => setIsComponentVisible(!isComponentVisible)}>
        <Title>요금</Title>
        <View>금액대 설정</View>
        {!isComponentVisible && <PriceModal/>}
        </PriceBtn>
        </PriceWrapper>
    );
}

const PriceWrapper = styled.div`
flex: auto;
`;
const PriceBtn = styled.div`
display: flex;
border-radius: 100px;
width: 100%;
flex-direction: column;
padding: 20px;
padding-left: 15%;
&:hover {
    background-color: #ebebeb;
}`;
const Title = styled.span`
padding: 5px 0;
display:block;
font-weight: 500;
font-size: 20px;
`;
const View = styled.span``;

export default Price;

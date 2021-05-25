import React, { useContext, useState, useEffect } from 'react';
import styled from 'styled-components';
import CalendarModal from '../modal/CalendarModal';
import useComponentVisible from "../modal/Modal"

const Period = () => {
    const {ref, isComponentVisible, setIsComponentVisible} = useComponentVisible(true);
    const periodData = [
        {
            id: 1,
            name: '체크인',
            input: '날짜입력'
        },
        {
            id: 2,
            name: '체크아웃',
            input: '날짜입력'
        },
    ]
    const [peroidInfo, setPeriodInfo] = useState(periodData);
    const periodList = peroidInfo.map((e, idx) => {
        return <CheckBox key={idx}><Title>{e.name}</Title><View>{e.input}</View></CheckBox>
    })
    return (
        <PeriodWrapper ref={ref}>
            <PeriodBtn onClick={() => setIsComponentVisible(!isComponentVisible)}>
            {periodList}
            {!isComponentVisible && <CalendarModal/>}
            </PeriodBtn>
        </PeriodWrapper>
    );
}

const PeriodWrapper = styled.div`
flex: 20%;
`;

const PeriodBtn = styled.button`
display:flex;
border-radius: 100px;
width: 100%;
height: auto;
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

const CheckBox = styled.div`
margin-right:10%
`;


export default Period;

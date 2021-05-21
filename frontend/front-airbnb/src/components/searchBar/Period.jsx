import React, { useState } from 'react';
import styled from 'styled-components';
import CalendarModal from '../modal/CalendarModal';

const Period = ({toggleState, setToggleState}) => {
    console.log(toggleState.period)
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
    const [peroidInfo, setPeriodInfo] = useState(periodData)
    const periodList = peroidInfo.map((e, idx) => {
        return <CheckBox key={idx}><Title>{e.name}</Title><View>{e.input}</View></CheckBox>
    })
    const openModal = () => {
        const newToggleState = {...toggleState}
        newToggleState.period = !toggleState.period;
        setToggleState(newToggleState);
    }
    return (
        <PeriodWrapper onClick={() => openModal()}>
            {periodList}
            {toggleState.period && <CalendarModal/>}
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

const CheckBox = styled.div`
margin-right:10%
`;


export default Period;

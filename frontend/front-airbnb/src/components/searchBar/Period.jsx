import React, { useContext, useState } from 'react';
import styled from 'styled-components';
import CalendarModal from '../modal/CalendarModal';
import { PostsContext } from '../mainPage/Main';

const Period = () => {
    const {toggleState, dispatch} = useContext(PostsContext);
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
    return (
        <PeriodWrapper onClick={() => dispatch({category: 'period'})}>
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

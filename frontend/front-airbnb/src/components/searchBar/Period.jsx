import React, { useContext, useState, useEffect } from 'react';
import styled from 'styled-components';
import CalendarModal from '../modal/CalendarModal';
import useComponentVisible from "../modal/Modal"
import { PostsContext } from './SearchBar';
import { GrFormClose } from "react-icons/gr";

const Period = () => {
    const {periodInfo, setPeriodInfo} = useContext(PostsContext);
    const {ref, isComponentVisible, setIsComponentVisible} = useComponentVisible(true);
    const periodList = periodInfo.map((e, idx) => {
        return <CheckBox key={idx}><Title>{e.name}</Title><View>{e.input}</View></CheckBox>
    })
    const resetCheckInOut = () => {
        setPeriodInfo(info => {
            let newArr = [...info];
            newArr[0].input = '날짜입력';
            newArr[1].input = '날짜입력';
            return newArr;
        })
    }
    return (
        <PeriodWrapper ref={ref}>
            { !isComponentVisible && <GrFormClose className="Btn"onClick={() => resetCheckInOut()}/>}
            <PeriodBtn onClick={() => setIsComponentVisible(!isComponentVisible)}>
            {periodList}
            {!isComponentVisible && <CalendarModal/>}
            </PeriodBtn>
        </PeriodWrapper>
    );
}
const PeriodWrapper = styled.div`
/* border: 1px solid red; */
flex: 20%;
.Btn {
    position: absolute;
    top:35%;
    left: 28%;
    font-size: 30px;
}
`;

const PeriodBtn = styled.div`
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

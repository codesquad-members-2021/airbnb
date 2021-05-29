import React, { useState ,useRef} from 'react';
import styled from 'styled-components';
import { FaArrowLeft, FaArrowRight, FaPiggyBank} from "react-icons/fa";
import Calendar from "../modal/Calendar";


const CalendarModal = () => {
    const monthData = (modifier ) => {
        const now = new Date(Date.now())
        return ({year:now.getFullYear(), month:now.getMonth()+modifier})
    }
    const [modList, setModList] = useState([-1,0,1,2]);
    const prevSlide = () => setModList(list=>list.map(el=>el-1))
    const nextSlide = () => setModList(list=>list.map(el=>el+1))
    const sliderRef = useRef(null);
    return (
        <CalendarModalWrapper onClick={e => e.stopPropagation()}>
            <CalendarList ref={sliderRef}>
                {modList.map(mod=><Calendar date={monthData(mod)} key={new Date(monthData(mod).year, monthData(mod).month)} />)}
            </CalendarList>
            <PreBtn onClick={prevSlide}><FaArrowLeft/></PreBtn>
            <NextBtn onClick={nextSlide}><FaArrowRight/></NextBtn>
        </CalendarModalWrapper>
    );
}


const DayWrapper = styled.div``;


const PreBtn = styled.button`
position: absolute;
width: 50px;
height: 50px;
font-size:20px;
z-index: 2;
top:10%;
left:10%;
`;


const NextBtn = styled.button`
position: absolute;
width: 50px;
height: 50px;
font-size:20px;
z-index: 2;
top:10%;
left:85%;
`;

const CalendarModalWrapper = styled.div`
    position: absolute;
    width: 100%;
    height: 500px;
    border-radius: 50px;
    background-color: white;
    top:120%;
    left:0%;
    display: flex;
    align-items: center;
    justify-content: center;
    overflow: hidden;
`;
const CalendarList = styled.ul`
    position: absolute;
    display: flex;
    top:-4%;
`;


export default CalendarModal;

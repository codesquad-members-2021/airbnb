import React, { useState ,useRef, useEffect} from 'react';
import styled from 'styled-components';
import { FaArrowLeft, FaArrowRight} from "react-icons/fa";

const TOTAL_SLIDES = 10;
const CalendarModal = () => {
    const [dateData, setDateDate] = useState([{year:2021, month:4, date:[1,2,3,4]},{year:2021, month:5, date:[1,2,3,4]},{year:2021, month:6, date:[1,2,3,4]},{year:2021, month:7, date:[1,2,3,4]}]);
    const [calendarIndex, setCalendarIndex] = useState(1);
    // let cnt = 0;
    const dataArr = dateData.map((e, idx) => {
        // cnt++;
        // if(cnt >4) return;

        if(idx >= calendarIndex-1 && idx <= calendarIndex+2) {
            return <CalendarEeach key={idx}>
                <CalendarTitle>{e.year}년{e.month}월</CalendarTitle>
                <CalendarDate>{e.date}</CalendarDate>
                </CalendarEeach>;
        }
    });
    // const [currentSlide, setCurrentSlide] = useState(0);
    const sliderRef = useRef(null);
    const nextSlide = () => {
        setCalendarIndex(calendarIndex-1);
    };
    const prevSlide = () => {
        setCalendarIndex(calendarIndex+1);
    };
    useEffect(() => {
        console.log(dateData);
            if(calendarIndex !== 1 && (calendarIndex+1 === dateData.length-1)) {
                console.log('컴')
                setDateDate([...dateData, {
                    year: dateData[dateData.length-1].year,
                    month: dateData[dateData.length-1].month+1
                }])
            }
            if(calendarIndex === 0) {
                const newData = [...dateData];
                newData.unshift({
                    year: dateData[0].year,
                    month: dateData[0].month-1
                });
                setDateDate(newData);
                setCalendarIndex(1);
                // setDateDate([...dateData, {
                //     year: dateData[dateData.length-1].year,
                //     month: dateData[dateData.length-1].month-1
                // }])
            }
    }, [calendarIndex]);
    return (
        <CalendarModalWrapper onClick={e => e.stopPropagation()}>
            <CalendarList ref={sliderRef}>
                {dataArr}
            </CalendarList>
            <PreBtn onClick={prevSlide}><FaArrowLeft/></PreBtn>
            <NextBtn onClick={nextSlide}><FaArrowRight/></NextBtn>
        </CalendarModalWrapper>
    );
}
const PreBtn = styled.button`
position: absolute;
width: 50px;
height: 50px;
font-size:20px;
z-index: 2;
top:10%;
left:10%;
`;
const CalendarDate = styled.div``;
const CalendarTitle = styled.div`
display: flex;
flex-direction: column;
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
`;
const CalendarList = styled.ul`
    border:1px solid blue;
    display: flex;
`;

const CalendarEeach = styled.li`
    border: 1px solid red;
    /* width: 250px; */
    margin: 40px;
`

export default CalendarModal;

import React, { useState ,useRef, useEffect, useContext} from 'react';
import styled from 'styled-components';
import { FaArrowLeft, FaArrowRight} from "react-icons/fa";
import { PostsContext } from '../searchBar/SearchBar';

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
const Calendar = ({date})=> {
    const {periodInfo, setPeriodInfo} = useContext(PostsContext);
    const {year, month} = date // year:YYYY, month:MM
    // console.log('년',year, month);
    const fristDay = new Date(year, month, 1).getDay();
    const lastDate = new Date(year, month+1, 0).getDate();
    let rowCnt = Math.ceil((fristDay+lastDate)/7);
    let totalArr =[];
    let dateNum=1;
    for(let i=1; i<=rowCnt; i++){
    let eachArr = [];
    for(let k=1; k<=7; k++){       
        if(i==1 && k<=fristDay || dateNum>lastDate){
            eachArr.push(null);
        }
        else{
            eachArr.push(dateNum)
            dateNum++;
        }
    }
    totalArr.push(eachArr);
    } 

    // const monthArr; // 이중배열
    const fixMonth =(year,month) => {
        if(month<0) return fixMonth(year-1, month+12)
        if (month>11) return fixMonth(year+1, month-12)
        return `${year}년${month+1}월`
    }
    const title = fixMonth(year, month);
    const makeFormat = (date) => {
        let fullData = `${year}-${month+1}-${date}`
        if(periodInfo[0].input === '날짜입력') createCheckIn(fullData);
        else checkINOUT(fullData);
    }
    const makeData = (data) => {
        let newData = data.split('-');
        for(let i=0; i<newData.length; i++) {
            if(newData[i].length ===1) {
                newData[i] = `0${newData[i]}`;
            }
        }
        return newData
    }


    const checkINOUT = (afterData) => {
        console.log('인아웃')
        let newArr = [...periodInfo];
        if(makeData(newArr[0].input) >= makeData(afterData)) {
            console.log('s')
            checkInToOut(newArr[0].input, afterData)
        }
        else if(newArr[1].input !== "날짜입력" && (makeData(newArr[1].input)>= makeData(afterData))) {
            createCheckIn(afterData);
        }
        else {
            console.log('s')
            createOut(afterData);
        }
    }
    const checkInToOut = (outData, inData) => {
        console.log('체크인 투 아웃', outData, inData)
        setPeriodInfo(info => {
            let newArr = [...info];
            if(newArr[1].input === '날짜입력' || (makeData(outData) >= makeData(newArr[1].input))){
                newArr[1].input = outData;
            }
            // newArr[1].input = outData;
            console.log(outData)
            console.log(newArr[1].input)
            newArr[0].input = inData;
            return newArr;
        })
    }
    const createOut = (fullData) => {
        setPeriodInfo(info => {
            let newArr = [...info];
            newArr[1].input = fullData
            return newArr;
        })
    }
    const createCheckIn = (fullData) => {
            setPeriodInfo(info => {
            let newArr = [...info]
            newArr[0].input = fullData
            return newArr;
        })
    }
    const weekDay = ['일','월','화','수','목','금','토'];
    return (
    <CalendarWrapper>
        <CalendarTable>
        <CalendarTitle>{title}</CalendarTitle>
        <thead><tr>{weekDay.map(e => <WeekTd>{e}</WeekTd>)}</tr></thead>
        <tbody>
            {totalArr.map((line, idx)=> <tr>{line.map((data, idx) =><TableTd onClick={()=>makeFormat(data)} 
            key={idx}>{data}</TableTd>)}</tr>)}
        </tbody>
        </CalendarTable>
    </CalendarWrapper>)
}
const WeekTd = styled.td`
font-size:20px;
padding: 12px;
text-align: center;
width: 20px;
height: 20px;
color: gray;
`;
const CalendarTitle = styled.caption`
width: 150px;
font-size:22px;
font-weight:500;
margin: 30px;
`;
const TableTd = styled.td`
font-size:20px;
padding: 8px;
width: 20px;
height: 20px;
text-align: center;
`

const CalendarWrapper = styled.li`
margin:50px;
/* border: 1px solid red; */
`;

const Day = styled.td`
    color:${({start,end,date})=>{
        if(date===start || date===end) return "red" 
        if(date>start || date<end) return "blue" 
        if(date<start) return "white" 
    }}
`

const CalendarTable = styled.table`
/* border: 1px solid red; */
width: 300px;
display: flex;
flex-direction: column;
justify-content: start;
align-items: center;
`;

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
    /* border:1px solid blue; */
    position: absolute;
    /* width: 600px; */
    display: flex;
    top:-4%;
`;


export default CalendarModal;

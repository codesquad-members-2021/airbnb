import React from 'react';
import styled from 'styled-components';

const TestSingleCalendar = ({ range }) => {
  return <SingleCalDiv>{getcalendarData(range)}</SingleCalDiv>;
};

const today = new Date();

// 원하는 달의 연도와,달 구해서 calendarHtml 얻기
const getcalendarData = (monthNum) => {
  //과거달
  //과거달 1년 전까지만 가능
  if (monthNum < 0) {
    if (today.getMonth() + monthNum < 0) {
      // const g_year = today.getFullYear()-1;
      const g_year = today.getFullYear() - 1;
      const g_month = numToMonth(12 + monthNum + today.getMonth());
      return setcalendarData(g_year, g_month);
    } else {
      const g_year = today.getFullYear();
      const g_month = numToMonth(today.getMonth() + monthNum);
      return setcalendarData(g_year, g_month);
    }
  }
  //미래달 & 현재달
  //미래달 1년미만의후까지만 가능
  else if (monthNum >= 0) {
    const g_year = today.getFullYear();
    const g_month = numToMonth(monthNum + today.getMonth());
    return setcalendarData(g_year, g_month);
  }
};
const SingleDay = ({ year, month, setFixDayCount, startDayCount }) => {
  return (
    <SingleDay>
      <span>${startDayCount}</span>
      <span
        id="${year}${month}${setFixDayCount(
            startDayCount++
          )}"
      ></span>
    </SingleDay>
  );
};
const setcalendarData = (year, month) => {
  console.log('함수 결과 무슨달', month);
  console.log('함수결과 무슨연도', year);
  let calHtml = '';
  //오늘날 날짜 객체  / 이번달 1째날짜 / 이번달 1째요일 / 이번달 막 날짜 / 지난달 막 날짜
  const setDate = new Date(year, month - 1, 1);
  //이번달 1째날짜
  const firstDay = setDate.getDate();
  //이번달 1째요일
  const firstDayName = setDate.getDate();
  //이번달 막 날짜
  const lastDay = new Date(year, month, 0).getDate();
  //지난달 막 날짜
  const prevLastDay = new Date(year, month - 1, 0).getDate();
  //이번달의 일수 구하기
  let startDayCount = 1;
  let lastDayCount = 1;

  for (let i = 0; i < 6; i++) {
    for (let j = 0; j < 7; j++) {
      //이번달 시작요일 이전
      if (i === 0 && j < firstDayName) {
        calHtml += `<div class='calendar__day borderHidden'>&nbsp;</div>`;
      }
      //이번달 시작 요일일 때
      else if (i === 0 && j === firstDayName) {
        if (j === 0) {
          calHtml += `<div class='calendar__day horizontalGutter'><span>${startDayCount}</span><span id='${year}${month}${setFixDayCount(
            startDayCount++
          )}'></span></div>`;
        } else if (j === 6) {
          calHtml += `<div class='calendar__day'><span>${startDayCount}</span><span id='${year}${month}${setFixDayCount(
            startDayCount++
          )}'></span></div>`;
        } else {
          calHtml += `<div class='calendar__day horizontalGutter'><span>${startDayCount}</span><span id='${year}${month}${setFixDayCount(
            startDayCount++
          )}'></span></div>`;
        }
      }
      //이번달 시작요일 이후일 때
      else if (i === 0 && j > firstDayName) {
        if (j === 0) {
          calHtml += `<div class='calendar__day horizontalGutter'><span>${startDayCount}</span><span id='${year}${month}${setFixDayCount(
            startDayCount++
          )}'></span></div>`;
        } else if (j === 6) {
          calHtml += `<div class='calendar__day'><span>${startDayCount}</span><span id='${year}${month}${setFixDayCount(
            startDayCount++
          )}'></span></div>`;
        } else {
          calHtml += `<div class='calendar__day horizontalGutter'><span>${startDayCount}</span><span id='${year}${month}${setFixDayCount(
            startDayCount++
          )}'></span></div>`;
        }
      }
      //이번달의 마지막날, 혹은 그 이전일 때
      else if (i > 0 && startDayCount <= lastDay) {
        if (j === 0) {
          calHtml += `<div class='calendar__day horizontalGutter verticalGutter'><span>${startDayCount}</span><span id='${year}${month}${setFixDayCount(
            startDayCount++
          )}'></span></div>`;
        } else if (j === 6) {
          calHtml += `<div class='calendar__day verticalGutter'><span>${startDayCount}</span><span id='${year}${month}${setFixDayCount(
            startDayCount++
          )}'></span></div>`;
        } else {
          calHtml += `<div class='calendar__day horizontalGutter verticalGutter'><span>${startDayCount}</span><span id='${year}${month}${setFixDayCount(
            startDayCount++
          )}'></span></div>`;
        }
      }
      //이번달의 마지막날 이후일 때
      else if (startDayCount > lastDay) {
        calHtml += `<div class='calendar__day borderHidden'>&nbsp;</div>`;
      }
    }
  }

  //캘린더 div 태그에 내용 붙임
  return calHtml;
};
// 달-1 받아서 달 로 만듦
const numToMonth = (num) => {
  if (num + 1 < 10) {
    return '0' + (num + 1);
  } else {
    return '' + (num + 1);
  }
};
//setcalendarData 에서 html 시행할때 id 생성용
const setFixDayCount = (number) => {
  let fixNum = '';
  if (number <= 10) {
    fixNum = '0' + (number - 1);
  } else {
    fixNum = number - 1;
  }
  return fixNum;
};
const CalendarDay = styled.div`
  display: inline-block;
  vertical-align: bottom;
  width: calc(97% / 7);
  height: calc(98% / 5);
  box-sizing: border-box;
  border-radius: 5px;
  padding: 14px;
  font-size: 14px;
  line-height: 18px;
  font-weight: 600;
  /* background-color: pink; */
  /* width: 100%; */
  height: 100%;
  position: relative;
  /* display: flex; */
  /* align-items: center; */
  /* justify-content: center; */
  /* flex-direction: column; */
  border: none;
  border-radius: 100%;
  color: rgb(72, 72, 72);
`;

const SingleCalDiv = styled.div`
  height: 16.5rem;
  border: 1px solid black;
  width: 21rem;
  margin: 0 2.125rem;
`;

export default TestSingleCalendar;

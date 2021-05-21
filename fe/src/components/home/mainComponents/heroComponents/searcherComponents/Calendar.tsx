import { Today } from '@material-ui/icons';
import React, { useState } from 'react';
import styled from 'styled-components';
import Layer from './Layer.style';
import { getInitialDate, getFirstDay, getLastDay, loadYYMM } from './calendarProducer';
import { Td } from '../../../../../shared/interface';

const Calendar = (): React.ReactElement => {
    // 일단 체크인 달력 기준으로 구현
    const [calendarQueue, setCalendarQueue] = useState<Date[]>(getInitialDate());

    const handlePrevCalendar = () => {
        const currFirstDate = calendarQueue[0];
        const newFirstDate = new Date();
        newFirstDate.setDate(1);
        newFirstDate.setMonth(currFirstDate.getMonth() - 1);
        const newCalendarQueue = [...calendarQueue];
        newCalendarQueue.pop();
        newCalendarQueue.unshift(newFirstDate);
        setCalendarQueue(newCalendarQueue);
    };

    const handleNextCalendar = () => {
        const currLastDate = calendarQueue[calendarQueue.length - 1];
        const newLastDate = new Date();
        newLastDate.setDate(1);
        newLastDate.setMonth(currLastDate.getMonth() + 1);
        const newCalendarQueue = [...calendarQueue];
        newCalendarQueue.shift();
        newCalendarQueue.push(newLastDate);
        setCalendarQueue(newCalendarQueue);
    };

    const renderWeek = (days: Td[]) => {
        return (
            <Week>
                {days.map((day) => {
                    const { classNames, countDay, dataSets } = day;
                    return <Day>{countDay}</Day>;
                })}
            </Week>
        );
    };

    const renderDate = () => {
        return calendarQueue.map((date) => {
            const dateTable = loadYYMM(date);
            return (
                <CalendarBox>
                    <CalendarTitle>
                        {date.getFullYear()}년 {date.getMonth()}월
                    </CalendarTitle>
                    <Days>{dateTable.map(renderWeek)}</Days>
                </CalendarBox>
            );
        });
    };

    return (
        <Layer width={916}>
            <button onClick={handlePrevCalendar}>prev</button>
            <CalendarContainer>{renderDate()}</CalendarContainer>
            <button onClick={handleNextCalendar}>next</button>
        </Layer>
    );
};

export default Calendar;

const CalendarContainer = styled.div`
    display: flex;
`;

const CalendarBox = styled.div`
    background: #fff;
`;

const Days = styled.ul``;

const CalendarTitle = styled.h3``;

const Week = styled.thead`
    display: grid;
    grid-template-columns: repeat(7, 1fr);
`;

const Day = styled.div`
    // display: flex;
`;

import React, { useState } from 'react';
import styled from 'styled-components';
import Layer from './Layer.style';
import { getInitialDate, getFirstDay, getLastDay, loadYYMM } from './calendarProducer';
import { Td } from '../../../../../shared/interface';
import { useReservationDispatch, useReservationState } from '../../../../../hooks/ReservationHook';
import { useSearcherDispatch, useSearcherState } from '../../../../../hooks/SearcherHook';
import { Container } from './shared.style';

type CalendarType = {
    isCheckIn: boolean;
};

type DateType = {
    possible: boolean;
    isCheckInDate: boolean;
};

const Calendar = ({ isCheckIn }: CalendarType) => {
    // 일단 체크인 달력 기준으로 구현
    const today = new Date();

    const reservationState = useReservationState();
    const reservationDispatch = useReservationDispatch();

    const { checkIn } = reservationState;

    // const searcherState = useSearcherState();
    const searcherDispatch = useSearcherDispatch();

    const [calendarQueue, setCalendarQueue] = useState<Date[]>(getInitialDate());

    const handleCalendarButton = (payload: number, direction: string) => {
        const currDate = direction === 'prev' ? calendarQueue[0] : calendarQueue[calendarQueue.length - 1];
        const newDate = new Date();
        newDate.setDate(1);
        newDate.setMonth(currDate.getMonth() + payload);
        const newCalendarQueue = [...calendarQueue];
        if (direction === 'prev') {
            newCalendarQueue.pop();
            newCalendarQueue.unshift(newDate);
        }
        if (direction === 'next') {
            newCalendarQueue.shift();
            newCalendarQueue.push(newDate);
        }
        setCalendarQueue(newCalendarQueue);
    };

    const isPossibleToCheckDate = (dataSets: string[] | null): boolean => {
        if (!dataSets || !dataSets.length) return true;
        const targetDate = new Date(dataSets[1]);

        return (
            targetDate.getFullYear() * 365 + targetDate.getMonth() * 31 + Number(dataSets[0]) >=
            today.getFullYear() * 365 + today.getMonth() * 31 + today.getDate()
        );
    };

    const handleCheckInDate = (
        event: React.MouseEvent<HTMLElement>,
        dataSets: string[] | null,
        possibleDate: boolean,
    ) => {
        const $target = event.target as HTMLDivElement;
        const $day = $target.closest('.day');
        if (!$day || !dataSets || !possibleDate) return;

        const date = new Date(dataSets[1]);
        reservationDispatch({
            type: 'CHECKIN',
            year: date.getFullYear(),
            month: date.getMonth() + 1,
            day: +dataSets[0],
        });
        searcherDispatch({ type: 'CHECKIN_CALENDAR_LAYER', state: false });
        searcherDispatch({ type: 'CHECKOUT_CALENDAR_LAYER', state: true });
    };

    const isCheckInDate = (dataSets: string[] | null): boolean => {
        if (!dataSets || !dataSets.length) return false;
        const { year, month, day } = checkIn;
        const targetDate = new Date(dataSets[1]);
        return year === targetDate.getFullYear() && month === targetDate.getMonth() + 1 && day === +dataSets[0];
    };

    const renderWeek = (days: Td[]) => {
        return (
            <Week>
                {days.map((day) => {
                    const { classNames, countDay, dataSets } = day;
                    const className = classNames?.reduce((acc, val) => acc + ` ${val}`, ``);
                    const possibleDate = isPossibleToCheckDate(dataSets);
                    return (
                        <Day
                            className={className}
                            possible={possibleDate}
                            isCheckInDate={isCheckInDate(dataSets)}
                            onClick={(e) => handleCheckInDate(e, dataSets, possibleDate)}
                        >
                            {countDay !== 0 && countDay}
                        </Day>
                    );
                })}
            </Week>
        );
    };

    const renderCalendars = () => {
        return calendarQueue.map((date) => {
            const dateTable = loadYYMM(date);
            return (
                <CalendarBox>
                    <CalendarTitle>
                        {date.getFullYear()}년 {date.getMonth() + 1}월
                    </CalendarTitle>
                    <Days>{dateTable.map(renderWeek)}</Days>
                </CalendarBox>
            );
        });
    };

    return (
        <Layer width={916}>
            <button onClick={() => handleCalendarButton(-1, 'prev')}>prev</button>
            <Container>{renderCalendars()}</Container>
            <button onClick={() => handleCalendarButton(1, 'next')}>next</button>
        </Layer>
    );
};

export default Calendar;

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
    color: ${({ possible }: DateType) => (!possible ? '#ddd' : '#000')};
    background: ${({ isCheckInDate }: DateType) => (isCheckInDate ? 'tomato' : '#fff')};
`;

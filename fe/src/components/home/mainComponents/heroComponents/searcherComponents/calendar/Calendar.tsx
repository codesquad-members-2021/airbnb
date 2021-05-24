import React, { useState } from 'react';
import styled from 'styled-components';
import { getInitialDate, getFirstDay, getLastDay, loadYYMM } from './calendarDate';
import { Td, UsefulObject } from '../../../../../../shared/interface';
import { useReservationDispatch, useReservationState } from '../../../../../../hooks/ReservationHook';
import { useSearcherDispatch, useSearcherState } from '../../../../../../hooks/SearcherHook';
import { Container, Layer } from '../shared.style';

type CalendarType = {
    isCheckIn: boolean;
};

type DateType = {
    possible: boolean;
    typeOfDate: string;
};

const dateTypeColor: UsefulObject = {
    checkIn: 'tomato',
    checkOut: 'tomato',
    between: '#d5c5b4',
    default: '#fff',
};

const Calendar = ({ isCheckIn }: CalendarType) => {
    // 일단 체크인 달력 기준으로 구현
    const today = new Date();

    const reservationState = useReservationState();
    const reservationDispatch = useReservationDispatch();

    const { checkIn, checkOut } = reservationState;

    const searcherDispatch = useSearcherDispatch();

    const [calendarQueue, setCalendarQueue] = useState<Date[]>(getInitialDate());

    const getDateSum = (year: number, month: number, day: number): number => {
        return year * 365 + month * 31 + day;
    };

    const isBefore = (targetDateSum: number, criterionDateSum: number): boolean => {
        return targetDateSum < criterionDateSum;
    };

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
        const targetDateSum = getDateSum(targetDate.getFullYear(), targetDate.getMonth() + 1, Number(dataSets[0]));
        const todaySum = getDateSum(today.getFullYear(), today.getMonth() + 1, today.getDate());
        return isBefore(todaySum, targetDateSum);
    };

    const handleDate = (event: React.MouseEvent<HTMLElement>, dataSets: string[] | null, possibleDate: boolean) => {
        const $target = event.target as HTMLDivElement;
        const $day = $target.closest('.day');
        if (!$day || !dataSets || !possibleDate) return;

        const targetDate = new Date(dataSets[1]);
        const targetDateSum = getDateSum(targetDate.getFullYear(), targetDate.getMonth() + 1, +dataSets[0]);
        const checkInSum = getDateSum(checkIn.year, checkIn.month, checkIn.day);

        if (!isCheckIn && isBefore(targetDateSum, checkInSum)) {
            reservationDispatch({
                type: 'CHECKIN',
                year: targetDate.getFullYear(),
                month: targetDate.getMonth() + 1,
                day: +dataSets[0],
            });
            return;
        }

        reservationDispatch({
            type: isCheckIn ? 'CHECKIN' : 'CHECKOUT',
            year: targetDate.getFullYear(),
            month: targetDate.getMonth() + 1,
            day: +dataSets[0],
        });
        searcherDispatch({ type: 'CHECKIN_CALENDAR_LAYER', state: false });
        searcherDispatch({ type: 'CHECKOUT_CALENDAR_LAYER', state: isCheckIn });
    };

    const isCheckInDate = (dataSets: string[] | null): boolean => {
        if (!dataSets || !dataSets.length) return false;
        const { year, month, day } = checkIn;
        const targetDate = new Date(dataSets[1]);
        return year === targetDate.getFullYear() && month === targetDate.getMonth() + 1 && day === +dataSets[0];
    };

    const isCheckOutDate = (dataSets: string[] | null): boolean => {
        if (!dataSets || !dataSets.length) return false;
        const { year, month, day } = checkOut;
        const targetDate = new Date(dataSets[1]);
        return year === targetDate.getFullYear() && month === targetDate.getMonth() + 1 && day === +dataSets[0];
    };

    const isBetweenDate = (dataSets: string[] | null): boolean => {
        if (!dataSets || !dataSets.length) return false;
        const checkInDateSum = getDateSum(checkIn.year, checkIn.month, checkIn.day);
        const checkOutDateSum = getDateSum(checkOut.year, checkOut.month, checkOut.day);
        const targetDate = new Date(dataSets[1]);
        const targetDateSum = getDateSum(targetDate.getFullYear(), targetDate.getMonth() + 1, Number(dataSets[0]));
        return targetDateSum > checkInDateSum && targetDateSum < checkOutDateSum;
    };

    const getTypeOfDate = (dataSets: string[] | null): string => {
        if (!dataSets || !dataSets.length) return 'default';
        if (isCheckInDate(dataSets)) return 'checkIn';
        if (isCheckOutDate(dataSets)) return 'checkOut';
        if (isBetweenDate(dataSets)) return 'between';
        return 'default';
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
                            typeOfDate={getTypeOfDate(dataSets)}
                            onClick={(e) => handleDate(e, dataSets, possibleDate)}
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
        <Layer width={916} top={70} left={0}>
            <button onClick={() => handleCalendarButton(-1, 'prev')}>prev</button>
            <Container>{renderCalendars()}</Container>
            <button onClick={() => handleCalendarButton(1, 'next')}>next</button>
        </Layer>
    );
};

export default Calendar;

const CalendarBox = styled.div``;

const CalendarTitle = styled.h3``;

const Week = styled.thead`
    display: grid;
    grid-template-columns: repeat(7, 1fr);
`;

const Days = styled.div``;

const Day = styled.div`
    // display: flex;
    color: ${({ possible }: DateType) => (!possible ? '#ddd' : '#000')};
    background: ${({ typeOfDate }: DateType) => dateTypeColor[typeOfDate]};
`;

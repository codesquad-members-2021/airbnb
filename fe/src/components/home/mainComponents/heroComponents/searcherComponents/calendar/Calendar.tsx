import React, { useState } from 'react';
import styled from 'styled-components';
import { getInitialDate, loadYYMM } from './calendarDate';
import { Td, UsefulObject, CalendarType, DateType, Date as IDate } from '../../../../../../shared/interface';
import { useReservationDispatch, useReservationState } from '../../../../../../hooks/ReservationHook';
import { useSearcherDispatch } from '../../../../../../hooks/SearcherHook';
import { Container, Layer } from '../shared.style';
import { getDateSum, isBefore, isPossibleToCheckDate, getTypeOfDate, isNotCheckedDate } from './calendarChecker';

const dateTypeColor: UsefulObject = {
    checkIn: 'tomato',
    checkOut: 'tomato',
    between: '#d5c5b4',
    default: '#fff',
};

const Calendar = ({ isCheckIn }: CalendarType): React.ReactElement => {
    const reservationState = useReservationState();
    const { checkIn, checkOut } = reservationState;
    const reservationDispatch = useReservationDispatch();
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

    const handleDate = (event: React.MouseEvent<HTMLElement>, dataSets: string[] | null, possibleDate: boolean) => {
        const $target = event.target as HTMLDivElement;
        const $day = $target.closest('.day');
        if (!$day || !dataSets || !possibleDate) return;

        const targetDate = new Date(dataSets[1]);
        const targetDateSum = getDateSum({
            year: targetDate.getFullYear(),
            month: targetDate.getMonth() + 1,
            day: +dataSets[0],
        });
        const checkInSum = getDateSum(checkIn);

        if (!isCheckIn && (isBefore(targetDateSum, checkInSum) || isNotCheckedDate(checkIn))) {
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
        searcherDispatch({ type: 'SHOW_CHECKIN_CALENDAR_LAYER', state: false });
        searcherDispatch({ type: 'SHOW_CHECKOUT_CALENDAR_LAYER', state: isCheckIn });
    };

    return (
        <Layer width={900} top={70} left={0}>
            <button onClick={() => handleCalendarButton(-1, 'prev')}>prev</button>
            <CalendarContainer>
                <MonthsPresenter {...{ checkIn, checkOut, calendarQueue, handleDate }} />
            </CalendarContainer>
            <button onClick={() => handleCalendarButton(1, 'next')}>next</button>
        </Layer>
    );
};

export default Calendar;

const CarouselBox = styled.div`
    position: absolute;
    border: 1px solid blue;
`;

const CalendarContainer = styled.div`
    width: 500px;
`;

const CalendarList = styled.ul`
    display: flex;
`;

const CalendarBox = styled.li`
    margin: 0 10px;
`;

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

interface CalendarPresenterProps {
    checkIn: IDate;
    checkOut: IDate;
    handleDate: (event: React.MouseEvent<HTMLElement>, dataSets: string[] | null, possibleDate: boolean) => void;
}

interface WeekProps extends CalendarPresenterProps {
    days: Td[];
}

interface MonthProps extends CalendarPresenterProps {
    calendarQueue: Date[];
}

function MonthsPresenter(props: MonthProps) {
    const { checkIn, checkOut, handleDate, calendarQueue } = props;
    return (
        <CalendarList>
            {calendarQueue.map((date) => {
                const dateTable = loadYYMM(date);
                return (
                    <CalendarBox>
                        <CalendarTitle>
                            {date.getFullYear()}년 {date.getMonth() + 1}월
                        </CalendarTitle>
                        <Days>
                            {dateTable.map((days) => (
                                <WeekPresenter {...{ days, checkIn, checkOut, handleDate }} />
                            ))}
                        </Days>
                    </CalendarBox>
                );
            })}
        </CalendarList>
    );
}

function WeekPresenter(props: WeekProps) {
    const { days, checkIn, checkOut, handleDate } = props;
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
                        typeOfDate={getTypeOfDate(dataSets, checkIn, checkOut)}
                        onClick={(e) => handleDate(e, dataSets, possibleDate)}
                    >
                        {countDay !== 0 && countDay}
                    </Day>
                );
            })}
        </Week>
    );
}

import React, { useState } from 'react';
import styled from 'styled-components';
import { getInitialDate, loadYYMM } from './calendarDate';
import { Td, UsefulObject, CalendarType, DateType, Date as IDate } from '../../../../../../shared/interface';
import { useReservationDispatch, useReservationState } from '../../../../../../hooks/ReservationHook';
import { useSearcherDispatch } from '../../../../../../hooks/SearcherHook';
import { Layer } from '../shared.style';
import { getDateSum, isBefore, isPossibleToCheckDate, getTypeOfDate, isNotCheckedDate } from './calendarChecker';

const dateTypeColor: UsefulObject = {
    checkIn: 'tomato',
    checkOut: 'tomato',
    between: '#d5c5b4',
    default: '#fff',
};

const Calendar = ({ isCheckIn }: CalendarType): React.ReactElement => {
    const { checkIn, checkOut } = useReservationState();
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
        } else if (direction === 'next') {
            newCalendarQueue.shift();
            newCalendarQueue.push(newDate);
        }

        setCalendarQueue(newCalendarQueue);
    };

    const handleCheckDate = (
        event: React.MouseEvent<HTMLElement>,
        dataSets: string[] | null,
        possibleDate: boolean,
    ) => {
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
        searcherDispatch({ type: 'SHOW_CHECKOUT_CALENDAR_LAYER', state: isCheckIn });
    };

    return (
        <Layer width={916} top={100} left={0} height={512}>
            <LayerContentContainer>
                <CalendarContainer>
                    <div>
                        <button onClick={() => handleCalendarButton(-1, 'prev')}>prev</button>
                    </div>
                    <CarouselBox>
                        <MonthsPresenter {...{ checkIn, checkOut, calendarQueue, handleCheckDate }} />
                    </CarouselBox>
                    <div>
                        <button onClick={() => handleCalendarButton(1, 'next')}>next</button>
                    </div>
                </CalendarContainer>
            </LayerContentContainer>
        </Layer>
    );
};

export default Calendar;

const CalendarContainer = styled.div`
    display: flex;
    width: 100%;
    height: 100%;
    justify-content: space-between;
`;

const LayerContentContainer = styled.div`
    position: relative;
    width: 100%;
    height: 100%;
    padding: 60px;
`;

const ButtonSection = styled.div`
    display: flex;
    justify-content: space-between;
`;

const CarouselBox = styled.div`
    width: 100%;
    background: green;
    position: relative;
    overflow: hidden;
`;

const CalendarList = styled.ul`
    display: flex;
    position: absolute;
    left: -350px;
`;

const CalendarBox = styled.li`
    width: 336px;
    margin: 0 10px;
    list-style: none;
`;

const CalendarTitle = styled.div`
    background: violet;
    margin-bottom: 24px;
    font-size: 16px;
    font-weight: 700;
    text-align: center;
`;

const Week = styled.thead`
    display: grid;
    grid-template-columns: repeat(7, 1fr);
`;

const Dates = styled.div``;

const DayName = styled.div`
    width: 48px;
    height: 24px;
    font-size: 12px;
    display: flex;
    justify-content: center;
    align-items: center;
`;

const Day = styled.div`
    height: 48px;
    margin: 4px 0;
    color: ${({ possible }: DateType) => (!possible ? '#ddd' : '#000')};
    background: ${({ typeOfDate }: DateType) => dateTypeColor[typeOfDate]};
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 12px;
`;

interface CalendarPresenterProps {
    checkIn: IDate;
    checkOut: IDate;
    handleCheckDate: (event: React.MouseEvent<HTMLElement>, dataSets: string[] | null, possibleDate: boolean) => void;
}

interface WeekProps extends CalendarPresenterProps {
    days: Td[];
}

interface MonthProps extends CalendarPresenterProps {
    calendarQueue: Date[];
}

function MonthsPresenter(props: MonthProps) {
    const { checkIn, checkOut, handleCheckDate, calendarQueue } = props;
    return (
        <CalendarList>
            {calendarQueue.map((date) => {
                const dateTable = loadYYMM(date);
                return (
                    <CalendarBox>
                        <CalendarTitle>
                            {date.getFullYear()}년 {date.getMonth() + 1}월
                        </CalendarTitle>
                        <Week>
                            {['일', '월', '화', '수', '목', '금', '토'].map((day) => (
                                <DayName>{day}</DayName>
                            ))}
                        </Week>
                        <Dates>
                            {dateTable.map((days) => (
                                <WeekPresenter {...{ days, checkIn, checkOut, handleCheckDate }} />
                            ))}
                        </Dates>
                    </CalendarBox>
                );
            })}
        </CalendarList>
    );
}

function WeekPresenter(props: WeekProps) {
    const { days, checkIn, checkOut, handleCheckDate } = props;
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
                        onClick={(e) => handleCheckDate(e, dataSets, possibleDate)}
                    >
                        {countDay !== 0 && countDay}
                    </Day>
                );
            })}
        </Week>
    );
}

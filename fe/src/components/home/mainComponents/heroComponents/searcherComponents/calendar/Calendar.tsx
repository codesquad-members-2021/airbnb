import React, { useEffect, useState } from 'react';
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

    // carousel
    const transitionDefault = '500ms';
    const panelWidth = 375;

    const [x, setX] = useState(-panelWidth);
    const [moving, setMoving] = useState(false);
    const [transitionValue, setTransitionValue] = useState(transitionDefault);
    const [addedDate, setAddedDate] = useState<Date | null>(null);
    const [lastDirection, setLastDirection] = useState(0);

    useEffect(() => {
        if (addedDate === null) return;
        const timer = setTimeout(() => {
            const currDate = lastDirection < 0 ? calendarQueue[0] : calendarQueue[calendarQueue.length - 1];
            const newCalendarQueue = [...calendarQueue];
            const newDate = new Date();
            newDate.setFullYear(currDate.getFullYear(), currDate.getMonth() + lastDirection, 1);
            if (lastDirection < 0) {
                newCalendarQueue.unshift(newDate);
                newCalendarQueue.pop();
            } else {
                newCalendarQueue.push(newDate);
                newCalendarQueue.shift();
            }
            setCalendarQueue(newCalendarQueue);
            setX(-panelWidth);
            setTransitionValue('0ms');
        }, 500);

        return () => clearTimeout(timer);
    }, [addedDate]);

    const handleCalendarButton = (direction: number) => {
        setX((prevX) => prevX - direction * 375);
        setMoving(true);
        setLastDirection(direction);
        if (transitionValue === '0ms') setTransitionValue(transitionDefault);
        const currDate = direction < 0 ? calendarQueue[0] : calendarQueue[calendarQueue.length - 1];
        const newDate = new Date();
        newDate.setFullYear(currDate.getFullYear(), currDate.getMonth() + direction, 1);
        setAddedDate(currDate);
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
                        <button onClick={() => handleCalendarButton(-1)}>◀</button>
                    </div>
                    <CarouselBox>
                        <MonthsPresenter
                            {...{ x, checkIn, checkOut, calendarQueue, handleCheckDate, transitionValue }}
                        />
                    </CarouselBox>
                    <div>
                        <button onClick={() => handleCalendarButton(1)}>▶</button>
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
    width: 100%;
    height: 100%;
    padding: 60px;
`;

const LayerContentContainer = styled.div`
    position: relative;
    width: 100%;
    height: 100%;
`;

const CarouselBox = styled.div`
    width: 750px;
    background: green;
    position: relative;
    overflow: hidden;
`;

interface CalendarListType {
    x: number;
    transitionValue: string;
}

const CalendarList = styled.ul<CalendarListType>`
    display: flex;
    position: absolute;
    transform: ${({ x }) => `translate3d(${x}px, 0, 0)`};
    transition: ${({ transitionValue }) => transitionValue};
`;

const CalendarBox = styled.li`
    width: 375px;
    padding: 0 10px;
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
    x: number;
    transitionValue: string;
}

function MonthsPresenter(props: MonthProps) {
    const { checkIn, checkOut, handleCheckDate, calendarQueue, x, transitionValue } = props;
    return (
        <CalendarList x={x} transitionValue={transitionValue}>
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

import React, { useEffect, useState } from 'react';
import { MonthsPresenter } from './calendar.presenter';
import { getInitialDate } from './calendarDate';
import { CalendarType } from '../../../../shared/interface';
import { useReservationDispatch, useReservationState } from '../../../../hooks/ReservationHook';
import { useSearcherDispatch } from '../../../../hooks/SearcherHook';

import { getDateSum, isBefore, isNotCheckedDate } from './calendarChecker';
import ModalLayer from '../common/ModalLayer';
import { CalendarContainer, CarouselBox, LayerContentContainer } from './calendar.style';

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
        <ModalLayer options={{ width: 916, top: 100, left: 0, height: 512 }}>
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
        </ModalLayer>
    );
};

export default Calendar;

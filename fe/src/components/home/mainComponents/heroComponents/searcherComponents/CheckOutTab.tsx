import React from 'react';
import styled from 'styled-components';
import { useReservationDispatch, useReservationState } from '../../../../../hooks/ReservationHook';
import { useSearcherDispatch, useSearcherState } from '../../../../../hooks/SearcherHook';
import Calendar from './calendar/Calendar';
import { isNotCheckedDate } from './calendar/calendarChecker';
import { Container, NavigatingText, Tab } from './shared.style';

const CheckOutTab = (): React.ReactElement => {
    const { checkOut } = useReservationState();
    const reservationDispatch = useReservationDispatch();
    const { checkOutCalendarLayer } = useSearcherState();
    const searcherDispatch = useSearcherDispatch();

    const handleCalendarLayer: React.MouseEventHandler<HTMLDivElement> = () => {
        searcherDispatch({ type: 'SHOW_CHECKOUT_CALENDAR_LAYER', state: true });
    };

    const handleCancel = () => {
        reservationDispatch({ type: 'RESET_DATE' });
    };

    const { year, month, day } = checkOut;

    return (
        <Container>
            <Tab onClick={handleCalendarLayer}>
                <NavigatingText>체크아웃</NavigatingText>
                <CheckOutDateText>{!isNotCheckedDate(checkOut) && `${year} - ${month} - ${day}`}</CheckOutDateText>
                {!isNotCheckedDate(checkOut) && <button onClick={handleCancel}>취소</button>}
                {checkOutCalendarLayer && <Calendar isCheckIn={false} />}
            </Tab>
        </Container>
    );
};

export default CheckOutTab;

const CheckOutDateText = styled.div``;

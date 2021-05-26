import React from 'react';
import {
    useSearcherDispatch,
    useSearcherLayerDispatch,
    useSearcherLayerState,
    useSearcherState,
} from '../../../../../hooks/SearcherHook';
import styled from 'styled-components';
import Calendar from './calendar/Calendar';
import { Container, Tab, NavigatingText } from './shared.style';
import { useReservationDispatch, useReservationState } from '../../../../../hooks/ReservationHook';
import { isNotCheckedDate } from './calendar/calendarChecker';

const CheckInTab = (): React.ReactElement => {
    const reservationState = useReservationState();
    const reservationDispatch = useReservationDispatch();
    const { checkIn } = reservationState;
    const searcherState = useSearcherState();
    const searcherDispatch = useSearcherDispatch();

    const { checkInCalendarLayer } = searcherState;

    const handleCalendarLayer: React.MouseEventHandler<HTMLDivElement> = () => {
        searcherDispatch({ type: 'SHOW_CHECKIN_CALENDAR_LAYER', state: true });
        // searcherDispatch({ type: 'SHOW_LOCATION_LAYER', state: false });
        // searcherDispatch({ type: 'SHOW_CHECKOUT_CALENDAR_LAYER', state: false });
        // searcherDispatch({ type: 'SHOW_FEE_LAYER', state: false });
        // searcherDispatch({ type: 'SHOW_PEOPLE_LAYER', state: false });
        // searcherDispatch({ type: 'SHOW_CHECKIN_CALENDAR_LAYER', state: true });
    };

    const handleCancel = () => {
        reservationDispatch({ type: 'CHECKIN', year: 0, month: 0, day: 0 });
    };

    const { year, month, day } = checkIn;

    return (
        <Container>
            <Tab onClick={handleCalendarLayer}>
                <NavigatingText>체크인</NavigatingText>
                <CheckInDateText>{!isNotCheckedDate(checkIn) && `${year} - ${month} - ${day}`}</CheckInDateText>
                {!isNotCheckedDate(checkIn) && <button onClick={handleCancel}>취소</button>}
            </Tab>
            {checkInCalendarLayer && <Calendar isCheckIn={true} />}
        </Container>
    );
};

export default CheckInTab;

const CheckInDateText = styled.div``;

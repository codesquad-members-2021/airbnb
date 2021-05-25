import React from 'react';
import styled from 'styled-components';
import { useReservationDispatch, useReservationState } from '../../../../../hooks/ReservationHook';
import { useSearcherDispatch, useSearcherState } from '../../../../../hooks/SearcherHook';
import Calendar from './calendar/Calendar';
import { Container, NavigatingText, Tab } from './shared.style';

const CheckOutTab = (): React.ReactElement => {
    const reservationState = useReservationState();
    const { checkOut } = reservationState;
    const reservationDispatch = useReservationDispatch();
    const searcherState = useSearcherState();
    const searcherDispatch = useSearcherDispatch();

    const { checkOutCalendarLayer } = searcherState;

    const handleCalendarLayer: React.MouseEventHandler<HTMLDivElement> = () => {
        searcherDispatch({ type: 'LOCATION_LAYER', state: false });
        searcherDispatch({ type: 'CHECKIN_CALENDAR_LAYER', state: false });
        searcherDispatch({ type: 'FEE_LAYER', state: false });
        searcherDispatch({ type: 'PEOPLE_LAYER', state: false });
        searcherDispatch({ type: 'CHECKOUT_CALENDAR_LAYER', state: true });
    };

    const handleCancel = () => {
        reservationDispatch({ type: 'CHECKOUT', year: 0, month: 0, day: 0 });
    };

    return (
        <Container>
            <Tab onClick={handleCalendarLayer}>
                <NavigatingText>체크아웃</NavigatingText>
                <CheckOutDateText>
                    {checkOut.year}-{checkOut.month}-{checkOut.day}
                </CheckOutDateText>
                <button onClick={handleCancel}>취소</button>
                {checkOutCalendarLayer && <Calendar isCheckIn={false} />}
            </Tab>
        </Container>
    );
};

export default CheckOutTab;

const CheckOutDateText = styled.div``;

import React from 'react';
import styled from 'styled-components';
import { useReservationState } from '../../../../../hooks/ReservationHook';
import { useSearcherDispatch, useSearcherState } from '../../../../../hooks/SearcherHook';
import Calendar from './calendar/Calendar';
import { Container, NavigatingText, Tab } from './shared.style';

const CheckOutTab = (): React.ReactElement => {
    const reservationState = useReservationState();
    const { checkOut } = reservationState;
    const searcherState = useSearcherState();
    const searcherDispatch = useSearcherDispatch();

    const { checkOutCalendarLayer } = searcherState;

    const handleCalendarLayer: React.MouseEventHandler<HTMLDivElement> = () => {
        searcherDispatch({ type: 'LOCATION_LAYER', state: false });
        searcherDispatch({ type: 'CHECKIN_CALENDAR_LAYER', state: false });
        searcherDispatch({ type: 'FEE_LAYER', state: false });
        searcherDispatch({ type: 'CHECKOUT_CALENDAR_LAYER', state: true });
    };

    return (
        <Container>
            <Tab onClick={handleCalendarLayer}>
                <NavigatingText>체크아웃</NavigatingText>
                <CheckOutDateText>
                    {checkOut.year}-{checkOut.month}-{checkOut.day}
                </CheckOutDateText>
                {checkOutCalendarLayer && <Calendar isCheckIn={false} />}
            </Tab>
        </Container>
    );
};

export default CheckOutTab;

const CheckOutDateText = styled.div``;

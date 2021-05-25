import React from 'react';
import { useSearcherDispatch, useSearcherState } from '../../../../../hooks/SearcherHook';
import styled from 'styled-components';
import Calendar from './calendar/Calendar';
import { Container, Tab, NavigatingText } from './shared.style';
import { useReservationState } from '../../../../../hooks/ReservationHook';

const CheckInTab = (): React.ReactElement => {
    const reservationState = useReservationState();
    const { checkIn } = reservationState;
    const searcherState = useSearcherState();
    const searcherDispatch = useSearcherDispatch();

    const { checkInCalendarLayer } = searcherState;

    const handleCalendarLayer: React.MouseEventHandler<HTMLDivElement> = () => {
        searcherDispatch({ type: 'LOCATION_LAYER', state: false });
        searcherDispatch({ type: 'CHECKOUT_CALENDAR_LAYER', state: false });
        searcherDispatch({ type: 'FEE_LAYER', state: false });
        searcherDispatch({ type: 'PEOPLE_LAYER', state: false });
        searcherDispatch({ type: 'CHECKIN_CALENDAR_LAYER', state: true });
    };

    return (
        <Container>
            <Tab onClick={handleCalendarLayer}>
                <NavigatingText>체크인</NavigatingText>
                <CheckInDateText>
                    {checkIn.year}-{checkIn.month}-{checkIn.day}
                </CheckInDateText>
            </Tab>
            {checkInCalendarLayer && <Calendar isCheckIn={true} />}
        </Container>
    );
};

export default CheckInTab;

const CheckInDateText = styled.div``;

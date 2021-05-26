import { Slider } from '@material-ui/core';
import React, { useState } from 'react';
import styled from 'styled-components';
import { useReservationDispatch, useReservationState } from '../../../../../hooks/ReservationHook';
import { useSearcherDispatch, useSearcherState } from '../../../../../hooks/SearcherHook';
import { Container, Layer, NavigatingText, Tab } from './shared.style';

const FeeTab = (): React.ReactElement => {
    const reservationState = useReservationState();
    const reservationDispatch = useReservationDispatch();

    const searcherState = useSearcherState();
    const searcherDispatch = useSearcherDispatch();

    const { fee } = reservationState;
    const { feeLayer } = searcherState;

    const [feeValue, setFeeValue] = useState<number[] | number>([27, 35]);

    const handleFeeLayer: React.MouseEventHandler<HTMLDivElement> = () => {
        searcherDispatch({ type: 'SHOW_LOCATION_LAYER', state: false });
        searcherDispatch({ type: 'SHOW_CHECKOUT_CALENDAR_LAYER', state: false });
        searcherDispatch({ type: 'SHOW_CHECKIN_CALENDAR_LAYER', state: false });
        searcherDispatch({ type: 'SHOW_PEOPLE_LAYER', state: false });
        searcherDispatch({ type: 'SHOW_FEE_LAYER', state: true });
    };

    const handleSliderChange = (event: React.ChangeEvent<unknown>, newValue: number[] | number) => {
        setFeeValue(newValue);
        reservationDispatch({ type: 'FEE', fee: newValue });
    };

    const handleSubmitFee = () => {
        reservationDispatch({ type: 'FEE', fee: feeValue });
        searcherDispatch({ type: 'SHOW_FEE_LAYER', state: false });
    };

    return (
        <Container>
            <Tab onClick={handleFeeLayer}>
                <NavigatingText>요금</NavigatingText>
                <PriceText>{typeof fee === 'number' ? `${fee}원` : `${fee[0]}만원 ${fee[1]}만원`}</PriceText>
            </Tab>
            {feeLayer && (
                <Layer width={390} top={70} left={480}>
                    <Slider value={feeValue} onChange={handleSliderChange} valueLabelDisplay="auto" />
                    <button onClick={handleSubmitFee}>확인</button>
                </Layer>
            )}
        </Container>
    );
};

export default FeeTab;

const PriceText = styled.div``;

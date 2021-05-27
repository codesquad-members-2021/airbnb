import { Slider } from '@material-ui/core';
import React, { useState } from 'react';
import styled from 'styled-components';
import { useReservationDispatch, useReservationState } from '../../../hooks/ReservationHook';
import { useSearcherDispatch, useSearcherState } from '../../../hooks/SearcherHook';
import ModalLayer from './common/ModalLayer';
import { Container, NavigatingText, Tab } from './common/shared.style';

const FeeTab = (): React.ReactElement => {
    const { fee } = useReservationState();
    const reservationDispatch = useReservationDispatch();

    const { feeLayer } = useSearcherState();
    const searcherDispatch = useSearcherDispatch();

    const [feeValue, setFeeValue] = useState<number[] | number>([27, 35]);

    const handleFeeLayer: React.MouseEventHandler<HTMLDivElement> = () => {
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
                <ModalLayer options={{ width: 400, top: 100, left: 480, height: 355 }}>
                    <Slider value={feeValue} onChange={handleSliderChange} valueLabelDisplay="auto" />
                    <button onClick={handleSubmitFee}>확인</button>
                </ModalLayer>
            )}
        </Container>
    );
};

export default FeeTab;

const PriceText = styled.div``;

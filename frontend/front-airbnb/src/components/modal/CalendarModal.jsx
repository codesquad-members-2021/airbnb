import React from 'react';
import styled from 'styled-components';

const CalendarModal = () => {
    return (
        <CalendarModalWrapper onClick={e => e.stopPropagation()}>
            캘린더 모달
        </CalendarModalWrapper>
    );
}

const CalendarModalWrapper = styled.div`
    position: absolute;
    width: 100%;
    height: 500px;
    border-radius: 50px;
    background-color: white;
    top:120%;
    left:0%;
`;

export default CalendarModal;

import React from 'react';
import styled from 'styled-components';

const PriceModal = () => {
    return (
        <PriceModalWrapper onClick={e => e.stopPropagation()}>

        </PriceModalWrapper>
    );
}

const PriceModalWrapper = styled.div`
    position: absolute;
    width: 50%;
    height: 500px;
    border-radius: 50px;
    background-color: #cfcfac;
    top:120%;
    left:20%;
`;
export default PriceModal;

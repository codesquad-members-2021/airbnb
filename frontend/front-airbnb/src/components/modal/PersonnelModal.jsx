import React from 'react';
import styled from 'styled-components';

const PersonnelModal = () => {
    return (
        <PersonnelModalWrapper onClick={e => e.stopPropagation()}>
        </PersonnelModalWrapper>
    );
}

const PersonnelModalWrapper = styled.div`
    position: absolute;
    width: 50%;
    height: 500px;
    border-radius: 50px;
    background-color: #c4ec9e;
    top:120%;
    left:45%;
`;

export default PersonnelModal;

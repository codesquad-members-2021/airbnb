import React, {useState} from 'react';
import styled from 'styled-components';

const PersonnelModal = () => {
    const personelData = [
        {
            id: 1,
            name: '체크인',
            input: '날짜입력'
        },
        {
            id: 2,
            name: '체크아웃',
            input: '날짜입력'
        }
    ];
    const [periodInfo, setPeriodInfo] = useState(personelData);
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

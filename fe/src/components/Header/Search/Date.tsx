import styled from 'styled-components';

import { useSetRecoilState } from 'recoil';
import { dateSearchClick } from '@recoil/atoms/calendarState';

import Title from '@components/common/Title';
import React from 'react';

const Date = () => {
  const setIsOpenCalendar = useSetRecoilState(dateSearchClick);

  const handleClickDateSerach = (e: React.MouseEvent): void => {
    e.stopPropagation();
    setIsOpenCalendar(true);
  };

  return (
    <DateWrap onClick={handleClickDateSerach}>
      <div>
        <Title>체크인</Title>
        <input type="text" placeholder="날짜" defaultValue="" />
      </div>
      <div>
        <Title>체크아웃</Title>
        <input type="text" placeholder="날짜" defaultValue="" />
      </div>
    </DateWrap>
  );
};

export default Date;

const DateWrap = styled.div`
  display: flex;
  height: 100%;
  width: 361px;
  align-items: center;
`;

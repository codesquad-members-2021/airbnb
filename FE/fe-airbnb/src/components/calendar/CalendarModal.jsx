import { useState, createContext, useEffect } from 'react';
import moment from 'moment';
import styled from 'styled-components';
import { Flex, Spacer } from '@chakra-ui/layout';
import { ReactComponent as LeftArrowIcon } from '../../icon/chevron-left.svg';
import { ReactComponent as RightArrowIcon } from '../../icon/chevron-right.svg';
import CalendarList from './CalendarList';

export const CalendarContext = createContext();

const CalendarModal = (props) => {
  const initialCalendars = [
    moment().add(-1, 'M'),
    moment(),
    moment().add(1, 'M'),
    moment().add(2, 'M'),
  ];

  const gap = 68;
  const calendarWidth = 336;
  const [calendars, setCalendars] = useState(initialCalendars);

  const calendarState = {
    values: {
      calendars,
      setCalendars,
    },
  };

  const [x, setX] = useState(-(calendarWidth + gap));
  const [leftSlide, setLeftSlide] = useState(false);
  const [rightSlide, setRightSlide] = useState(false);

  const handleClickLeft = () => {
    setLeftSlide(true);
    setX(x + 336 + gap);
    console.log('왼쪽 클릭');
  };

  const handleClickRight = () => {
    setRightSlide(true);
    setX(x - 336 - gap);
    console.log('오른쪽 클릭');
  };

  const handleTransitionEnd = () => {
    console.log('트랜지션 끝');
    if (leftSlide) {
      setLeftSlide(false);
      setX(x - 336 - gap);
      setCalendars(calendars.map((cal) => cal.clone().add(-1, 'M')));
    }
    if (rightSlide) {
      setRightSlide(false);
      setX(x + 336 + gap);
      setCalendars(calendars.map((cal) => cal.clone().add(1, 'M')));
    }
  };

  return (
    <CalendarContext.Provider value={calendarState.values}>
      <CalendarModalContainer>
        <ViewArea>
          <CalendarList
            x={x}
            onTransitionEnd={handleTransitionEnd}
            leftSlide={leftSlide}
            rightSlide={rightSlide}
          />
        </ViewArea>

        <Flex justify="center">
          <Controller>
            <Flex>
              <LeftArrowIcon onClick={handleClickLeft} />
              <Spacer />
              <RightArrowIcon onClick={handleClickRight} />
            </Flex>
          </Controller>
        </Flex>
      </CalendarModalContainer>
    </CalendarContext.Provider>
  );
};

const CalendarModalContainer = styled.div`
  width: 916px;
  height: fit-content;
  border-radius: ${({ theme }) => theme.borders.L};
  box-shadow: ${({ theme }) => theme.boxShadow.up2};
  padding: 60px 88px;
  position: relative;
  margin: 16px auto;
`;

const Controller = styled.div`
  position: absolute;
  top: 60px;
  width: 80%;
`;

const ViewArea = styled.div`
  width: 100%;
  /* overflow: hidden; */
`;

export default CalendarModal;

import { useState, useContext } from 'react';
import styled from 'styled-components';
import { Flex, Spacer } from '@chakra-ui/layout';
import { ReactComponent as LeftArrowIcon } from '../../icon/chevron-left.svg';
import { ReactComponent as RightArrowIcon } from '../../icon/chevron-right.svg';
import CalendarList from './CalendarList';
import { CalendarContext } from '@components/searchBar/SearchBar';

const CalendarModal = (props) => {
  const { calendars, setCalendars } = useContext(CalendarContext);

  const gap = 68;
  const calendarWidth = 336;

  const [x, setX] = useState(-(calendarWidth + gap));
  const [leftSlide, setLeftSlide] = useState(false);
  const [rightSlide, setRightSlide] = useState(false);

  const handleClickLeft = () => {
    setLeftSlide(true);
    setX(x + 336 + gap);
  };

  const handleClickRight = () => {
    setRightSlide(true);
    setX(x - 336 - gap);
  };

  const handleTransitionEnd = () => {
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
  overflow: hidden;
`;

export default CalendarModal;

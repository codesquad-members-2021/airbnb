// Airbnb Only
import styled from 'styled-components';
import DefaultButton from '../../../../../Common/DefaultButton';
import { RiArrowLeftSLine, RiArrowRightSLine } from 'react-icons/ri';
import { useEffect, useState } from 'react';

interface ICalendarCarousel {
  itemsPerCnt?: number;
  transitionProperty?: string;
  transitionDuration?: string;
  itemGap?: string;
  locationX?: string;
  handleLeftClick?: (e?: React.MouseEvent<HTMLElement>) => void;
  handleRightClick?: (e?: React.MouseEvent<HTMLElement>) => void;
  children?: React.ReactNode[];
}

const CalendarCarousel = ({
  itemsPerCnt = 2,
  transitionProperty = 'all',
  transitionDuration = '0.4s',
  itemGap = '8px',
  handleLeftClick = () => {},
  handleRightClick = () => {},
  children: items,
  ...props
}: ICalendarCarousel) => {
  const [direction, setDirection] = useState('');
  const [locationX, setLocationX] = useState('0');
  // const [tempTransition, setempTransition] = useState('0');
  const [isUpdate, setIsUpdate] = useState(false);

  const handleArrowLeftClick = () => {
    setLocationX(`calc(-1 * (100% / ${itemsPerCnt} + ${itemGap}))`);
    setDirection('L');
  };
  const handleArrowRightClick = () => {
    setLocationX(`calc((100% / ${itemsPerCnt} + ${itemGap}))`);
    setDirection('R');
  };
  const handleListTransitionEnd = () => setIsUpdate(true);

  useEffect(() => {
    if (!isUpdate) return;
    setLocationX('0');

    if (!direction) return;
    if (direction === 'L') handleLeftClick();
    else if (direction == 'R') handleRightClick();
    setIsUpdate(false);
  }, [isUpdate]);

  return (
    <CalendarCarouselLayout {...props}>
      <AbsoluteBlock>
        <ArrowButton isLeft onClick={handleArrowLeftClick}>
          <RiArrowLeftSLine />
        </ArrowButton>
        <ArrowButton onClick={handleArrowRightClick}>
          <RiArrowRightSLine />
        </ArrowButton>
      </AbsoluteBlock>

      <List
        transitionProperty={transitionProperty}
        transitionDuration={transitionDuration}
        locationX={locationX}
        onTransitionEnd={handleListTransitionEnd}
      >
        {items?.map((item, i) => (
          <Item key={i} itemsPerCnt={itemsPerCnt}>
            {item}
          </Item>
        ))}
      </List>
    </CalendarCarouselLayout>
  );
};

export default CalendarCarousel;

// --- Styled Components ---
const CalendarCarouselLayout = styled.div`
  display: flex;
  overflow: hidden;
  position: relative;
`;

const List = styled.ul<ICalendarCarousel>`
  width: 100%;
  transition-property: ${({ transitionProperty, locationX }) =>
    locationX !== '0' ? transitionProperty : 'none'};
  /* transition-property: none; */
  transition-duration: ${({ transitionDuration }) => transitionDuration};

  display: flex;
  justify-content: space-around;
  column-gap: ${({ itemGap }) => itemGap};

  position: relative;
  right: ${({ locationX }) => locationX};
`;

const Item = styled.li<{ itemsPerCnt: number }>`
  // flex-grow | flex-shrink | flex-basis
  flex: ${({ itemsPerCnt }) => `1 0 calc(100% / ${itemsPerCnt})`};
`;

const AbsoluteBlock = styled.div`
  position: absolute;
  z-index: 1;
  width: 100%;
`;

const ArrowButton = styled(DefaultButton)<{ isLeft?: boolean }>`
  position: absolute;
  right: ${({ isLeft }) => (isLeft ? 'auto' : '0')};
`;

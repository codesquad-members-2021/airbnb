import React, { useCallback, useMemo, useRef, useState } from "react";
import styled, { css, keyframes } from "styled-components";
import { HiOutlineChevronLeft, HiOutlineChevronRight } from "react-icons/hi";
import {
  useCalendarDispatch,
  useConstantState,
} from "../calendar/CalendarProvider";
import { MESSAGE } from "../utils/constant";
import { Direction } from "../utils/types";

type CarouselProps = {
  children: React.ReactNode;
};

export default function Carousel({ children }: CarouselProps) {
  const [x, setX] = useState(-1);
  const items = useMemo(() => createItems(children), [children]);
  const { countOfMonth } = useConstantState();
  const dispatch = useCalendarDispatch();
  const moving = useRef<boolean>(false);

  const onClickMove = useCallback((direction: Direction) => {
    if (moving.current) return;
    moving.current = true;

    if (direction === -1) {
      setX(-2);
      dispatch({ type: "MOVE_LEFT" });
    } else {
      setX(0);
      dispatch({ type: "MOVE_RIGHT" });
    }
  }, []);

  const onAnimationEnd = useCallback(() => {
    moving.current = false;
    setX(-1);
  }, []);

  const Slider = styled.div<{ x: number; count: number }>`
    width: 100%;
    display: flex;
    animation: ${({ x, count }) => {
        return moveAni(x, count);
      }}
      0.4s cubic-bezier(0.22, 1, 0.36, 1) forwards;
  `;

  return (
    <CarouselWarpper>
      <CarouselContainer>
        <Slider {...{ x, onAnimationEnd, count: countOfMonth }}>
          {items.map((el) => (
            <Item count={countOfMonth}>{el}</Item>
          ))}
        </Slider>
      </CarouselContainer>
      <Controller
        left
        onClickHandler={() => {
          onClickMove(-1);
        }}
      />
      <Controller
        right
        onClickHandler={() => {
          onClickMove(1);
        }}
      />
    </CarouselWarpper>
  );
}

Carousel.defaultProps = {
  countOfMonth: 2,
};

function createItems(children: React.ReactNode) {
  if (!Array.isArray(children)) {
    return [children];
  }
  return children;
}

function Controller({ left, right, onClickHandler }: ControllerProps) {
  if (left && right) {
    throw new Error(MESSAGE.ERROR.BOTH_DIRECTION);
  }
  if (!left && !right) {
    throw new Error(MESSAGE.ERROR.NO_DIRECTION);
  }
  const dir = left ? -1 : 1;

  return (
    <ControllerWraaper direction={dir}>
      <Button
        onClick={(e: React.MouseEvent<HTMLButtonElement, MouseEvent>) => {
          e.preventDefault();
          onClickHandler(dir);
        }}
      >
        {left && <HiOutlineChevronLeft />}
        {right && <HiOutlineChevronRight />}
      </Button>
    </ControllerWraaper>
  );
}

type ControllerProps = {
  left?: boolean;
  right?: boolean;
  onClickHandler: (dir: Direction) => void;
};

const moveAni = (x: number, count: number) => keyframes`
  from {
    transform: translateX(${`calc((100% / ${count}) * ${x})`});
  }
  to{
    transform: translateX(${`calc((100% / ${count}) * -1)`});
  }
`;

const CarouselWarpper = styled.div`
  width: 100%;
  display: flex;
`;

const CarouselContainer = styled.div`
  width: 100%;
  overflow: hidden;
`;

const Item = styled.div<{ count: number }>`
  width: ${({ count }) => `calc(100% / ${count})`};
  flex: 1 0 auto;
`;

const ControllerWraaper = styled.div<{ direction: number }>`
  position: absolute;
  top: 0;
  ${({ direction }) =>
    direction === -1
      ? css`
          left: 0;
        `
      : css`
          right: 0;
        `}
`;

const Button = styled.button`
  display: flex;
  justify-content: center;
  align-items: center;

  border-radius: 1rem;
  width: 2rem;
  height: 2rem;

  &:hover {
    transition: background 1s;
    background: silver;
  }
`;

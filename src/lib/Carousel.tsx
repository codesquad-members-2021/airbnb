import React, {useRef } from "react";
import { MESSAGE } from "./constant";
import styled, { css, keyframes } from "styled-components";
import { HiOutlineChevronLeft, HiOutlineChevronRight } from "react-icons/hi";
import { Direction } from "./type";
import { useCalendarDispatch, useCalendarState } from "./CalendarProvider";

type CarouselProps = {
  children: React.ReactNode;
  countOfItemToShow: number;
  onClickHandler: (dir: Direction) => void;
};

export default function Carousel({
  children,
  countOfItemToShow,
  onClickHandler,
}: CarouselProps) {
  const items = _createItems(children);
  const state = useCalendarState();
  const { x } = state;
  const moving = useRef<boolean>(false);
  const dispatch = useCalendarDispatch();

  const onClickMove = (direction: Direction) => {
    if (moving.current) return;
    moving.current = true;
    dispatch(
      direction === -1
        ? { type: "MOVE_LEFT", x: -2 }
        : { type: "MOVE_RIGHT", x: 0 }
    );
    onClickHandler(direction);
  };

  const onAnimationEnd = () => {
    moving.current = false;
  };

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
        <Slider x={x} count={countOfItemToShow} onAnimationEnd={onAnimationEnd}>
          {items.map((el) => (
            <Item count={countOfItemToShow}>{el}</Item>
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
  countOfItemToShow: 2,
};

function _createItems(children: React.ReactNode) {
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

const CarouselWarpper = styled.div`
  width: 100%;
  display: flex;
`;

const CarouselContainer = styled.div`
  width: 100%;
  /* overflow: hidden; */
`;

const moveAni = (x: number, count: number) => keyframes`
  from {
    transform: translateX(${`calc((100% / ${count}) * ${x})`});
  }
  to{
    transform: translateX(${`calc((100% / ${count}) * -1)`});
  }
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
    background: tan;
  }
`;

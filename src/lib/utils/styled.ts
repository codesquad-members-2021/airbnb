import styled, { css } from "styled-components";

export const DayWrapper = styled.li<{ typeOfDay: string; done?: boolean }>`
  & > div:hover {
    box-sizing: border-box;
    border: 1px solid black;
  }
  ${({ typeOfDay, done }) => {
    if (typeOfDay === "start") {
      return css`
        & > div {
          background: black;
          color: white;
        }
        ${done &&
        css`
          background: linear-gradient(270deg, silver 50%, #fff 50%);
        `}
      `;
    } else if (typeOfDay === "end") {
      return css`
        & > div {
          background: black;
          color: white;
        }
        ${done &&
        css`
          background: linear-gradient(90deg, silver 50%, #fff 50%);
        `}
      `;
    } else if (typeOfDay === "between") {
      return css`
        background: silver;
      `;
    } else if (typeOfDay === "passed") {
      return css`
        color: silver;
        pointer-events: none;

        & > div:hover {
          box-sizing: border-box;
          border: none;
        }
      `;
    }
  }}
  position: relative;
  width: calc(100% / 7);
  &:after {
    content: "";
    display: block;
    padding-bottom: 100%;
  }
`;

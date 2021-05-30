import React from "react";
import styled from "styled-components";
import { DAYS } from "./constant";

export const renderWeeks = (lang: string, count: number) => {
  return (
    <WeeksContainer>
      {Array(count)
        .fill(null)
        .map((el) => (
          <Weeks count={count}>
            {DAYS[lang].map((day) => (
              <li>{day}</li>
            ))}
          </Weeks>
        ))}
    </WeeksContainer>
  );
};

const WeeksContainer = styled.div`
  position: absolute;
  top: 1.5rem;
  width: 100%;
  display: flex;
  justify-content: space-around;
`;

const Weeks = styled.ul<{ count: number }>`
  width: ${({ count }) => `calc(100% / ${count})`};
  padding: 0 2rem;
  display: flex;
  justify-content: space-around;
`;

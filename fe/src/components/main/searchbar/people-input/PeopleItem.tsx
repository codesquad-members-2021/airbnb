import { Box } from "@material-ui/core";
import { useState } from "react";
import styled from "styled-components";
import { AiOutlinePlus, AiOutlineMinus } from "react-icons/ai";
import { useSetRecoilState } from "recoil";
import { PeopleData } from "atoms/searchbarAtom";

interface PeopleItemProps {
  title: "성인" | "어린이" | "유아";
  subtitle: String;
  max: number;
  min: number;
  number: number;
}

const PeopleItem = ({ title, subtitle, max, min, number }: PeopleItemProps) => {
  const setPeopleNumber = useSetRecoilState(PeopleData);

  const [pluseDisable, setPluseDisable] = useState<boolean>(number === max);
  const [minusDisable, setMinusDisable] = useState<boolean>(number === min);
  const clickPlus = () => {
    if (number === min) setMinusDisable(false);
    if (number === max - 1) setPluseDisable(true);
    setPeopleNumber(({ adult, teen, kids }) => {
      switch (title) {
        case "성인":
          return { adult: adult + 1, teen, kids };
        case "어린이":
          if (!adult) return { adult: 1, teen: teen + 1, kids };
          return { adult: adult, teen: teen + 1, kids };
        case "유아":
          if (!adult) return { adult: 1, teen, kids: kids + 1 };
          return { adult: adult, teen, kids: kids + 1 };
      }
    });
  };

  const clickMinus = () => {
    if (number === max) setPluseDisable(false);
    if (number === min + 1) setMinusDisable(true);
    setPeopleNumber(({ adult, teen, kids }) => {
      switch (title) {
        case "성인":
          if (adult - 1 === 0) return { adult: 0, teen: 0, kids: 0 };
          return { adult: adult - 1, teen, kids };
        case "어린이":
          return { adult: adult, teen: teen - 1, kids };
        case "유아":
          return { adult: adult, teen, kids: kids - 1 };
      }
    });
  };

  return (
    <StyledPeopleItem>
      <Box display="flex" flexDirection="column">
        <PeopleTitle>{title}</PeopleTitle>
        <PeopleSubtitle>{subtitle}</PeopleSubtitle>
      </Box>
      <Box display="flex" alignItems="center">
        <PeopleBtn onClick={clickMinus} disabled={minusDisable}>
          <AiOutlineMinus />
        </PeopleBtn>
        <PeopleNumber>{number}</PeopleNumber>
        <PeopleBtn onClick={clickPlus} disabled={pluseDisable}>
          <AiOutlinePlus />
        </PeopleBtn>
      </Box>
    </StyledPeopleItem>
  );
};

export default PeopleItem;

const StyledPeopleItem = styled.li`
  display: flex;
  justify-content: space-between;
  width: 18rem;
  margin: 1.5rem 0;
`;

const PeopleTitle = styled.span`
  font-size: 1rem;
  font-weight: 700;
  margin-bottom: 0.3rem;
`;

const PeopleSubtitle = styled.span`
  font-size: 0.8rem;
  font-weight: 400;
`;

const PeopleNumber = styled.span`
  font-size: 1.2rem;
  font-weight: 700;
  margin: 0 1.5rem;
`;

const PeopleBtn = styled.button`
  background-color: ${({ theme }) => theme.color.White};
  border-radius: 50%;
  color: ${({ theme }) => theme.color.Gray4};
  border: ${({ theme }) => theme.border.Gray4};
  font-size: 3rem;
  width: 2.5rem;
  height: 2.5rem;
  &:hover {
    color: ${({ theme }) => theme.color.Black};
    border-color: ${({ theme }) => theme.color.Black};
  }
`;

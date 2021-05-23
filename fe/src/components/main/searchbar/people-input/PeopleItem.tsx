import { Box } from "@material-ui/core";
import { useState } from "react";
import { Dispatch } from "react";
import styled from "styled-components";
import { AiOutlinePlus } from "react-icons/ai";
import { AiOutlineMinus } from "react-icons/ai";
interface PeopleItemProps {
  title: String;
  subtitle: String;
  // dispatch : Dispatch<> = () => void
}

const PeopleItem = ({ title, subtitle }: PeopleItemProps) => {
  const [number, setNumber] = useState<Number>(0);
  return (
    <StyledPeopleItem>
      <Box display="flex" flexDirection="column">
        <PeopleTitle>{title}</PeopleTitle>
        <PeopleSubtitle>{subtitle}</PeopleSubtitle>
      </Box>
      <Box display="flex" alignItems="center">
        <PeopleBtn>
          <AiOutlineMinus />
        </PeopleBtn>
        <PeopleNumber>{number}</PeopleNumber>
        <PeopleBtn>
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
  display: flex;
  align-items: center;
  cursor: pointer;
  background-color: ${({ theme }) => theme.color.White};
  border-radius: 50%;
  color: ${({ theme }) => theme.color.Gray4};
  border: ${({ theme }) => theme.border.Gray4};
  font-size: 3rem;
  width: 2.5rem;
  height: 2.5rem;
  justify-content: center;
  &:hover {
    color: ${({ theme }) => theme.color.Black};
    border-color: ${({ theme }) => theme.color.Black};
  }
`;

import styled from "styled-components";
import PeopleItem from "./PeopleItem";
import { useRecoilValue } from "recoil";
import { PeopleData } from "atoms/searchbarAtom";

const PeopleList = () => {
  const { adult, teen, kids } = useRecoilValue(PeopleData);
  return (
    <StyledPeopleList>
      <PeopleItem
        title="성인"
        subtitle="만13세이상"
        max={8}
        min={0}
        number={adult}
      />
      <SeparateBar />
      <PeopleItem
        title="어린이"
        subtitle="만 2~12세"
        max={8}
        min={0}
        number={teen}
      />
      <SeparateBar />
      <PeopleItem
        title="유아"
        subtitle="만 2세 미만"
        max={8}
        min={0}
        number={kids}
      />
    </StyledPeopleList>
  );
};

export default PeopleList;

const StyledPeopleList = styled.ul`
  padding: 0rem 2rem;
`;

const SeparateBar = styled.div`
  width: 100%;
  height: 1px;
  background-color: ${({ theme }) => theme.color.Gray5};
`;

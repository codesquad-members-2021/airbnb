import { Dispatch } from "react";
import styled from "styled-components";

// interface PeopleItemProps {
//     title : String;
//     subtitle : String;
//     dispatch : Dispatch<> = () => void
// }

const PeopleItem = () => {
  return (
    <StyledPeopleItem>
      <PeopleItemColumn>
          <PeopleItemTitle></PeopleItemTitle>
      </PeopleItemColumn>
      <PeopleItemColumn></PeopleItemColumn>
    </StyledPeopleItem>
  );
};

export default PeopleItem;

const StyledPeopleItem = styled.li`
  display: flex;
  justify-content: space-between;
`;

const PeopleItemColumn = styled.div`
  display: flex;
  justify-content: space-between;
  flex-direction: column;
`;

const PeopleItemTitle = styled.span`

`
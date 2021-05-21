import React, { useContext } from 'react';
import styled from 'styled-components';
import { SearchContext } from '..';

const PeopleCard = ({ type: peopleType, title, contents }) => {
  const { peopleCount, peopleDispatch } = useContext(SearchContext);

  return (
    <PeopleCardDiv>
      <PeopleLabel>
        <PeopleLabelTitle>{title}</PeopleLabelTitle>
        <PeopleLabelCaption>{contents}</PeopleLabelCaption>
      </PeopleLabel>
      <PeopleCountSpace>
        <CountButton
          disabled={peopleCount[peopleType] === 0 ? true : false}
          onClick={() =>
            peopleDispatch({ type: 'DECREASE', payload: `${peopleType}` })
          }
        >
          -
        </CountButton>
        <CountNumber>{peopleCount[peopleType]}</CountNumber>
        <CountButton
          onClick={() =>
            peopleDispatch({ type: 'INCREASE', payload: `${peopleType}` })
          }
        >
          +
        </CountButton>
      </PeopleCountSpace>
    </PeopleCardDiv>
  );
};

const PeopleCardDiv = styled.div`
  display: flex;
  justify-content: space-between;
  /* border: 1px solid magenta; */
`;

const PeopleLabel = styled.div`
  display: flex;
  flex-direction: column;
  align-items: flex-start;
`;

const PeopleLabelTitle = styled.div`
  font-weight: 700;
  font-size: ${({ theme }) => theme.fontSizes.XS};
`;

const PeopleLabelCaption = styled.div`
  font-size: ${({ theme }) => theme.fontSizes.XXS};
  color: ${({ theme }) => theme.colors.gray3};
`;

const PeopleCountSpace = styled.div`
  display: flex;
  align-items: center;
  gap: 1.3rem;
`;

const CountButton = styled.button`
  background: none;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 70%;
  width: 30px;
  height: 30px;
  color: ${({ theme }) => theme.colors.gray3};
  font-size: ${({ theme }) => theme.fontSizes.M};
  border: 1px solid
    ${({ theme, disabled }) =>
      disabled ? theme.colors.gray5 : theme.colors.gray3};
  cursor: pointer;
`;

const CountNumber = styled.div`
  font-weight: 700;
  font-size: ${({ theme }) => theme.fontSizes.M};
  color: ${({ theme }) => theme.colors.gray1};
`;

export default PeopleCard;

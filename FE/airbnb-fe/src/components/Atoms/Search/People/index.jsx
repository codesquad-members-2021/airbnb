import React from 'react';
import styled from 'styled-components';

const People = () => {
  return <PeopleDiv></PeopleDiv>;
};

const PeopleDiv = styled.div`
  background-color: ${({ theme }) => theme.colors.gray3};
`;

export default People;

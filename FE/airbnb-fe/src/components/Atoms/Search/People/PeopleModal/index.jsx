import React from 'react';
import styled from 'styled-components';

const PeopleModal = () => {
  return <PeopleModalDiv></PeopleModalDiv>;
};

const PeopleModalDiv = styled.div`
  position: absolute;
  top: 6rem;
  left: 27rem;
  width: 31rem;
  height: 23rem;
  border-radius: 40px;
  background-color: ${({ theme }) => theme.colors.gray6};
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
    0px 0px 4px rgba(51, 51, 51, 0.05);
`;

export default PeopleModal;

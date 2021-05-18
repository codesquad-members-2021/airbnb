import React from 'react';
import styled from 'styled-components';
import RoomCard from './RoomCard';

const RoomTour = () => {
  return (
    <RoomTourDiv>
      <RoomTourTitle>어디서나 여행은 살아보는거야!</RoomTourTitle>
      <RoomCard />
    </RoomTourDiv>
  );
};

const RoomTourDiv = styled.div`
  width: 100%;
  height: fit-content;
`;

const RoomTourTitle = styled.div`
  color: ${(props) => props.theme.colors.gray6};
  font-size: 2rem;
`;

export default RoomTour;

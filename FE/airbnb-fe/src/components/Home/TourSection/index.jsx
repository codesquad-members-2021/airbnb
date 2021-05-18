import React from 'react';
import styled from 'styled-components';
import CityTour from './CityTour';
import RoomTour from './RoomTour';

const TourSection = () => {
  return (
    <TourSectionDiv>
      <CityTour></CityTour>
      <RoomTour></RoomTour>
    </TourSectionDiv>
  );
};

const TourSectionDiv = styled.div`
  height: 935px;
  margin: 0 80px;
  border: 2px solid red;
  /* background-color: ${({ theme }) => theme.colors.gray2}; */
`;

export default TourSection;

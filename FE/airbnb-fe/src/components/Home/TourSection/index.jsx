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
  height: fit-content;
  margin: 0 auto;
`;

export default TourSection;

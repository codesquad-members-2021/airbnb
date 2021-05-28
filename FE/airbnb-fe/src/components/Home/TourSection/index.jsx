import { useState, useEffect } from 'react';
import styled from 'styled-components';
import CityTour from './CityTour';
import RoomTour from './RoomTour';
import API from '../../utils/API';

const TourSection = () => {
  // const [homeData, setHomeData] = useState();
  // useEffect(() => {
  //   setHomeData(API.get.home());
  // }, []);
  // console.log('home', homeData);

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

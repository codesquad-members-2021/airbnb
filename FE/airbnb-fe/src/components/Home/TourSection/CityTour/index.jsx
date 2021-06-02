import { useState, useEffect } from 'react';
import styled from 'styled-components';
import CityCard from './CityCard';
// import cityData from '../../../utils/mock/city-card.json';
import API from '../../../utils/API';

const CityTour = () => {
  const [cityData, setCityData] = useState();

  useEffect(() => {
    const fetchData = API.get.home();
    fetchData.then((res) => setCityData(res.recommendedList));
  }, []);
  return (
    <CityTourDiv>
      <CityTitle>가까운 여행지 둘러보기</CityTitle>
      <CityCardFrame>
        {cityData?.map((cityCard, idx) => (
          <CityCard
            key={idx}
            cityImg={cityCard.image}
            cityName={cityCard.cityName}
            cityDistance={cityCard.description}
          ></CityCard>
        ))}
      </CityCardFrame>
    </CityTourDiv>
  );
};

const CityTourDiv = styled.div`
  margin: 0rem auto 5rem auto;
  width: 88.88%;
`;
const CityCardFrame = styled.div`
  width: 100%;
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr;
  grid-template-rows: 1fr 1fr;
  grid-gap: 1rem;
  @media only screen and (max-width: 768px) {
    grid-template-columns: 1fr 1fr 1fr;
    grid-template-rows: 1fr 1fr;
    grid-gap: 0.5rem;
  }
`;
const CityTitle = styled.div`
  margin-bottom: 2rem;
  color: ${({ theme }) => theme.colors.gray1};
  font-size: ${({ theme }) => theme.fontSizes.XL};
  @media only screen and (max-width: 768px) {
    font-size: 1.7rem;
  }
`;

export default CityTour;

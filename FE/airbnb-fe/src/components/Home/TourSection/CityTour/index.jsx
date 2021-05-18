import React from 'react';
import styled from 'styled-components';
import CityCard from './CityCard';
import cityData from '../../../../mocdata/city-card.json';
const CityTour = () => {
  return (
    <CityTourDiv>
      <CityTitle>가까운 여행지 둘러보기</CityTitle>
      <CityCardFrame>
        {cityData.map((cityCard, idx) => (
          <CityCard
            key={idx}
            cityImg={cityCard.imgUrl}
            cityName={cityCard.name}
            cityDistance={cityCard.distance}
          ></CityCard>
        ))}
      </CityCardFrame>
    </CityTourDiv>
  );
};

const CityTourDiv = styled.div`
  margin-bottom: 80px;
  /* background-color: ${({ theme }) => theme.colors.gray2}; */
`;
const CityCardFrame = styled.div`
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
`;
const CityTitle = styled.div`
  margin-bottom: 10px;
  color: ${({ theme }) => theme.colors.gray1};
  font-size: ${({ theme }) => theme.fontSizes.XL};
`;

export default CityTour;

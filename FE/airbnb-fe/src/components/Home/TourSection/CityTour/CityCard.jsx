import React from 'react';
import styled from 'styled-components';

const CityCard = ({ children, ...props }) => {
  return (
    <CityCardDiv>
      <CityImg src={props.cityImg}></CityImg>
      <CityContent>
        <CityTag>{props.cityName}</CityTag>
        <CityTag>{props.cityDistance}</CityTag>
      </CityContent>
    </CityCardDiv>
  );
};

const CityCardDiv = styled.div`
  display: flex;
  gap: 1rem;
  width: 100%;
  height: 100%;
  /* flex-direction: row; */
  /* height: 80px; */
`;
const CityImg = styled.img`
  width: 80px;
  height: 80px;
  /* margin-right: 16px; */
  border-radius: 10px;
  @media only screen and (max-width: 768px) {
    width: 80px;
    height: 80px;
  }
`;
const CityContent = styled.div`
  display: flex;
  flex-direction: column;
  align-items: space-between;
  margin: 10px 0;
  justify-content: center;
`;
const CityTag = styled.div`
  color: ${({ theme }) => theme.colors.gray1};
  font-size: ${({ theme }) => theme.fontSizes.S};
  font-weight: 400;
  @media only screen and (max-width: 768px) {
    font-size: 0.9rem;
  }
`;

export default CityCard;

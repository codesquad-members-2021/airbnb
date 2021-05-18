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
  flex-direction: row;
  align-items: center;
  width: 308px;
  height: 80px;
  margin: 24px 16px 0 0;
  padding: 0px;
`;
const CityImg = styled.img`
  width: 80px;
  height: 80px;
  margin-right: 16px;
  border-radius: 10px;
`;
const CityContent = styled.div`
  display: flex;
  flex-direction: column;
  align-items: space-between;
  margin: 10px 0;
  padding: 0px;
`;
const CityTag = styled.div`
  color: ${({ theme }) => theme.colors.gray1};
  font-size: ${({ theme }) => theme.fontSizes.S};
  font-weight: 400;
`;

export default CityCard;

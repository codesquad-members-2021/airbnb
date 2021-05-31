import React from "react";
import styled from "styled-components";

const Location = ({ contents }) => {
  return <LocationWrapper>{contents.map(renderContent)}</LocationWrapper>;
};
const renderContent = (content) => {
  const { location, imageURL, type, time, id } = content;
  return (
    <LocationItem key={id}>
      <LocationImage URL={imageURL} />
      <LocationContent>
        <h3>{location}</h3>
        <p>
          {type}로 {convertTime(time)} 거리
        </p>
      </LocationContent>
    </LocationItem>
  );
};
const LocationContent = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: space-around;
  padding-left: 1rem;
`;
const convertTime = (time) => {
  if (time <= 60) return `${time}분`;
  return `${(time / 60).toFixed(1)}시간`;
};
const LocationWrapper = styled.ul`
  display: flex;
  flex-wrap: wrap;
`;
const LocationItem = styled.li`
  width: 25%;
  height: 80px;
  display: flex;

  margin-top: 2rem;
`;
const LocationImage = styled.div`
  width: 80px;
  height: 80px;
  border-radius: 10px;
  background: url(${({ URL }) => URL});
  background-size: cover;
`;

export default Location;

import React from "react";
import Hero from "./mainComponents/Hero";
import NearbyLocation from "./mainComponents/NearbyLocation";
import HouseType from "./mainComponents/HouseType";
import BeingHost from "./mainComponents/BeingHost";

const Main = (props) => {
  return (
    <>
      <Hero />
      <NearbyLocation />
      <HouseType />
      <BeingHost />
    </>
  );
};

export default Main;

import React from "react";
import styled from "styled-components";
import Header from "component/Header";
import BigSearchBar from "component/searchBar/BigSearchBar";

function PrimarySection() {
  return (
    <PrimarySectionContainer>
      <Header />
      <BigSearchBar />
    </PrimarySectionContainer>
  );
}

export default PrimarySection;

const PrimarySectionContainer = styled.div`
  position: relative;
  width: 100%;
  height: 640px;
  background: url(https://a0.muscache.com/im/pictures/ddc7f01f-3fb3-483c-87e6-701dad52c930.jpg?im_q=highq&im_w=2560);
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;

  display: flex;
  justify-content: center;
`;

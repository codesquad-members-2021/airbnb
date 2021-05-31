import React from "react";
import styled from "styled-components";

const Thema = ({ contents }) => {
  return <ThemaWrapper>{contents.map(renderContent)}</ThemaWrapper>;
};
const renderContent = (content) => {
  const { imageURL, title } = content;
  return (
    <ThemaItem URL={imageURL}>
      <div />
      <h3>{title}</h3>
    </ThemaItem>
  );
};
const ThemaWrapper = styled.ul`
  display: flex;
`;
const ThemaItem = styled.li`
  flex: 1;
  & + & {
    margin-left: 1rem;
  }

  & div {
    border-radius: 1rem;
    width: 100%;
    background: url(${({ URL }) => URL});
    background-size: cover;
  }
  & div:after {
    content: "";
    display: block;
    padding-bottom: 100%;
  }
  & h3 {
    margin-top: 1rem;
    font-weight: bold;
    font-size: 1.2rem;
  }
`;

export default Thema;

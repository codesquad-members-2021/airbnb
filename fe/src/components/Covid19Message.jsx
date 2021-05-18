import React from "react";
import styled from "styled-components";

const Covid19Message = (props) => {
  return (
    <Message>
      <a href="/">에어비앤비의 코로나19 대응 방안에 대한 최신 정보를 확인하세요.</a>
    </Message>
  );
};

export default Covid19Message;

const Message = styled.div`
  background: #000;
  witch: 100%;
  height: 50px;
  text-align: center;
`;

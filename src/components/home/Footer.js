import React from "react";
import styled from "styled-components";
import { DUMMY } from "../../utils/dummy";

const Footer = () => {
  const { FOOTER, POLICY } = DUMMY;
  return (
    <FooterWrapper>
      <FooterContents>{FOOTER.map(renderContent)}</FooterContents>
      <FooterBottom>{POLICY.map(renderPolicy)}</FooterBottom>
    </FooterWrapper>
  );
};
const renderContent = (content) => {
  const { title, list } = content;
  return (
    <FooterContent>
      <h4>{title}</h4>
      <ul>
        {list.map((item) => (
          <li>{item}</li>
        ))}
      </ul>
    </FooterContent>
  );
};
const renderPolicy = (item) => {
  return <li>{item}</li>;
};
const FooterWrapper = styled.div`
  width: 100%;
  height: 500px;
  background: #f5f5f7;
  font-size: 0.9rem;
`;
const FooterContents = styled.ul`
  display: flex;
  width: 80%;
  margin: 0 auto;
  padding: 3rem 0;
`;
const FooterContent = styled.li`
  flex: 1;
  & + & {
    margin-left: 2rem;
  }
  & > h4 {
    font-weight: bold;
  }
  & > ul > li {
    margin-top: 1rem;
  }
`;
const FooterBottom = styled.ul`
  width: 80%;
  margin: 0 auto;
  display: flex;
  border-top: 1px solid #d8d8d8;
  padding-top: 1rem;

  & > li + li {
    margin-left: 2rem;
  }
`;
export default Footer;

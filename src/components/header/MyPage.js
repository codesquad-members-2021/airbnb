import React from "react";
import styled, { css } from "styled-components";
import { ReactComponent as Language } from "../../assets/svg/img_language.svg";
import { ReactComponent as Hamberger } from "../../assets/svg/img_hamberger.svg";
import { ReactComponent as MyPageIcon } from "../../assets/svg/img_myPage.svg";

const MyPage = () => {
  return (
    <MyPageWrapper>
      {renderItem("호스트 되기")}
      {renderItem(<Language fill="black" />)}
      {renderItem(
        <MyMenu>
          <Hamberger />
          <MyPageIcon />
        </MyMenu>,
        "white"
      )}
    </MyPageWrapper>
  );
};
const renderItem = (content, background = "none") => {
  return <MyPageItem background={background}>{content}</MyPageItem>;
};
const MyPageWrapper = styled.ul`
  display: flex;
  align-items: center;
  justify-content: flex-end;
`;
const MyPageItem = styled.li`
  & + & {
    margin-left: 0.5rem;
  }
  display: flex;
  align-items: center;
  height: 40px;
  border-radius: 20px;
  padding: 0 5px;

  ${({ background }) =>
    background === "none"
      ? css`
          padding: 0 10px;
          &:hover {
            background: white;
          }
        `
      : css`
          background: ${background};
        `}

  background: ${({ background }) => background};
`;
const MyMenu = styled.div`
  width: 4rem;
  position: relative;
  display: flex;
  align-items: center;
  justify-content: space-between;
`;

export default MyPage;

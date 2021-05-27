import React, { useState } from "react";
import styled from "styled-components";
import { ReactComponent as MenuIcon } from "assets/menu.svg";
import { ReactComponent as UserIcon } from "assets/user.svg";
import MyPageModal from "component/header/MyPageModal";
import { toggleModal, closeModalByBodyClick, stopPropagation } from "hooks/modalHooks";

function MyPage() {
  const [isOpenMyPage, setIsOpenMyPage] = useState<boolean>(false);
  const handleClickMyPage = (e: React.MouseEvent) => toggleModal({ e, setState: setIsOpenMyPage, state: isOpenMyPage });
  closeModalByBodyClick(setIsOpenMyPage);
  return (
    <MyPageContainer onClick={handleClickMyPage}>
      <Button>
        <MenuIcon />
        <UserIcon />
      </Button>
      {isOpenMyPage && <MyPageModal onClick={stopPropagation} />}
    </MyPageContainer>
  );
}

export default MyPage;

const MyPageContainer = styled.div`
  box-sizing: border-box;
  width: 75px;
  height: 40px;
  padding: 4px 4px 4px 13px;
  border: 1px solid #bdbdbd;
  background-color: #fff;
  border-radius: ${({ theme }) => theme.borderRadius.m};
  cursor: pointer;

  display: flex;
  align-items: center;
  position: relative;
`;

const Button = styled.button`
  width: 100%;
  padding: 0;
  margin: 0;
  outline: none;
  border: none;
  background-color: transparent;
  cursor: pointer;

  display: flex;
  justify-content: space-between;
  align-items: center;

  svg:first-child {
    width: 16px;
  }
`;

import { useState } from 'react';
import styled from "styled-components";
import RoomList from "components/RoomList/RoomList";
import MiniHeader from "components/Header/MiniHeader";
import Reservation from "components/Reservation/Reservation";
import Responsive from "components/common/Responsive";

// import { useRecoilState } from "recoil";
// import { roomCardClickedState } from 'recoil/Atoms'

const ResultPage = () => {
  // const [ isClicked ] = useRecoilState(roomCardClickedState);
  return (
    <MainPageLayout>
      <MiniHeader />
      <RoomList />
      <Reservation/>
      {/* {isClicked ? <Reservation/>: <></>} */}
    </MainPageLayout>
  );
};
const MainPageLayout = styled(Responsive)`
  position: relative;
`;

export default ResultPage;

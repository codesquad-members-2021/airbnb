import styled from "styled-components";
import RoomList from "components/RoomList/RoomList";
import { useRecoilValue } from "recoil";
import SearchBar from "components/SearchBar/SearchBar";
import MiniHeader from "components/Header/MiniHeader";

import {
  searchBarClickState,
  checkInState,
  checkOutState,
  roomPriceState,
  guestState,
} from "recoil/Atoms";
import Responsive from "components/common/Responsive";

const ResultPage = () => {
  return (
    <MainPageLayout>
      <MiniHeader />
      <RoomList />
    </MainPageLayout>
  );
};
const MainPageLayout = styled(Responsive)`
  position: relative;
`;

export default ResultPage;

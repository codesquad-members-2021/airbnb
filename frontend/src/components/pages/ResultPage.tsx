import styled from "styled-components";
import RoomList from "components/RoomList/RoomList";
import MiniHeader from "components/Header/MiniHeader";
import Reservation from "components/Reservation/Reservation";
import Responsive from "components/common/Responsive";

const ResultPage = () => {
  return (
    <MainPageLayout>
      <MiniHeader />
      <RoomList />
      <Reservation />
    </MainPageLayout>
  );
};
const MainPageLayout = styled(Responsive)`
  position: relative;
`;

export default ResultPage;

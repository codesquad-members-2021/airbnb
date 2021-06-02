import styled from "styled-components";
import RoomList from 'components/RoomList/RoomList';
import { useRecoilValue } from "recoil";
import {
  searchBarClickState,
  checkInState,
  checkOutState,
  roomPriceState,
  guestState,
} from "recoil/Atoms";
const ResultPage = () => {
  const checkInDate = useRecoilValue(checkInState);
  return (
  <ResultPageLayout>
    <RoomList/>
  </ResultPageLayout>
)};

const ResultPageLayout = styled.div`
   width: 100%;
`

export default ResultPage;

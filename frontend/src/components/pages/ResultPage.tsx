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

  return <div>결과</div>;
};

export default ResultPage;

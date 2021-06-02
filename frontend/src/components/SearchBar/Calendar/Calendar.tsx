import CalendarModal from "./CalendarModal";
import styled from "styled-components";
import * as S from "components/SearchBar/SearchBarStyles";
import CancelButton from "components/common/CancelButton";
import {
  checkInClickState,
  checkOutClickState,
  searchBarClickState,
  checkInState,
  checkOutState,
} from "recoil/Atoms";
import { useRecoilValue, useSetRecoilState } from "recoil";
import { search } from "util/enum";
const Calendar = () => {
  const setsSearchBarClick = useSetRecoilState(searchBarClickState);
  const isCheckInClicked = useRecoilValue(checkInClickState);
  const isCheckOutClicked = useRecoilValue(checkOutClickState);
  const checkIn = useRecoilValue(checkInState);
  const checkOut = useRecoilValue(checkOutState);
  return (
    <>
      <CalendarLayout>
        <S.SearchBarBox
          _width="40%"
          className="check-in"
          _clicked={isCheckInClicked}
          onClick={() => {
            setsSearchBarClick(search.in);
          }}
        >
          <S.SearchBarTitle>체크인</S.SearchBarTitle>
          <S.SearchBarText>
            {checkIn.month || checkIn.month === 0
              ? `${checkIn.month + 1 === 13 ? 1 : checkIn.month + 1}월${
                  checkIn.date
                }일`
              : "날짜 입력"}
          </S.SearchBarText>
          <CancelButton type={search.in} />
        </S.SearchBarBox>
        <S.SearchBarBox
          _width="50%"
          className="check-out"
          _clicked={isCheckOutClicked}
          onClick={() => {
            setsSearchBarClick(search.out);
          }}
        >
          <S.SearchBarTitle>체크아웃</S.SearchBarTitle>
          <S.SearchBarText>
            {checkOut.month || checkOut.month === 0
              ? `${checkOut.month + 1 === 13 ? 1 : checkOut.month + 1}월${
                  checkOut.date
                }일`
              : "날짜 입력"}
          </S.SearchBarText>
          <CancelButton type={search.out} />
        </S.SearchBarBox>
      </CalendarLayout>
      {(isCheckInClicked || isCheckOutClicked) && <CalendarModal />}
    </>
  );
};
const CalendarLayout = styled.div`
  display: flex;
  width: 60%;
`;

export default Calendar;

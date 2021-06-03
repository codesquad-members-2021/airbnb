import { selector } from "recoil";
import { checkinDateState, checkoutDateState } from "state/atoms/calendarAtoms";
import { thumbLeftPriceState, thumbRightPriceState } from "state/atoms/fareAtoms";
import { numOfAdultsState, numOfChildrenState, numOfBabiesState } from "state/atoms/guestAtoms";
import { searchResultState } from "state/atoms/searchResultAtoms";

export const searchDetail = selector({
  key: "makeSearchDetail",
  get: ({ get }) => {
    const checkin = get(checkinDateState);
    const checkout = get(checkoutDateState);
    const minPrice = get(thumbLeftPriceState);
    const maxPrice = get(thumbRightPriceState);
    const adults = get(numOfAdultsState);
    const children = get(numOfChildrenState);
    const infant = get(numOfBabiesState);
    const searchResult = get(searchResultState);

    let isSelectedCheckin, isSelectedCheckout, isSelectedAdults, isSelectedChildren, isSelectedInfant;
    isSelectedCheckin = checkin !== "날짜 입력" ? true : false;
    isSelectedCheckout = checkout !== "날짜 입력" ? true : false;
    isSelectedAdults = adults !== 0 ? true : false;
    isSelectedChildren = children !== 0 ? true : false;
    isSelectedInfant = infant !== 0 ? true : false;

    const checkinDate = `${checkin.substr(4, 2)}월 ${checkin.substr(6, 2)}일`;
    const checkoutDate = `${checkout.substr(4, 2)}월 ${checkout.substr(6, 2)}일`;

    let detail = "";
    if (searchResult !== null) detail += `${searchResult.length}개의 숙소`;
    if (isSelectedCheckin && isSelectedCheckout) detail += `•${checkinDate} - ${checkoutDate}`;
    detail += `•₩${minPrice.toLocaleString()} - ₩${maxPrice.toLocaleString()}`;
    if (isSelectedAdults) detail += `•성인 ${adults}명`;
    if (isSelectedChildren) detail += `•어린이 ${children}명`;
    if (isSelectedInfant) detail += `•유아 ${infant}명`;

    return detail;
  },
});

import { selector } from "recoil";
import { checkinDateState, checkoutDateState } from "state/atoms/calendarAtoms";
import { thumbLeftPriceState, thumbRightPriceState } from "state/atoms/fareAtoms";
import { numOfAdultsState, numOfChildrenState, numOfBabiesState } from "state/atoms/guestAtoms";
import { regionNameState } from "state/atoms/positionAtoms";

export const searchQuery = selector({
  key: "makeSearchQuery",
  get: ({ get }) => {
    const checkin = get(checkinDateState);
    const checkout = get(checkoutDateState);
    const minPrice = get(thumbLeftPriceState);
    const maxPrice = get(thumbRightPriceState);
    const adults = get(numOfAdultsState);
    const children = get(numOfChildrenState);
    const infant = get(numOfBabiesState);
    const region = get(regionNameState);

    let isSelectedCheckin, isSelectedCheckout, isSelectedAdults, isSelectedChildren, isSelectedInfant;
    isSelectedCheckin = checkin !== "날짜 입력" ? true : false;
    isSelectedCheckout = checkout !== "날짜 입력" ? true : false;
    isSelectedAdults = adults !== 0 ? true : false;
    isSelectedChildren = children !== 0 ? true : false;
    isSelectedInfant = infant !== 0 ? true : false;

    const regionArr = region.split(" ");
    const regionName = regionArr[regionArr.length - 1].slice(0, -1);
    const checkinDate = `${checkin.substr(0, 4)}-${checkin.substr(4, 2)}-${checkin.substr(6, 2)}`;
    const checkoutDate = `${checkout.substr(0, 4)}-${checkout.substr(4, 2)}-${checkout.substr(6, 2)}`;

    // 서버에 데이터가 양재, 봉천만 있어서 일단 하드코딩
    // let query = `?destination=${regionName}`;
    let query = `?destination=양재`;
    if (isSelectedCheckin && isSelectedCheckout) query += `&checkInDate=${checkinDate}&checkOutDate=${checkoutDate}`;
    query += `&minPrice=${minPrice}`;
    query += `&maxPrice=${maxPrice}`;
    if (isSelectedAdults) query += `&numOfAdult=${adults}`;
    if (isSelectedChildren) query += `&numOfChild=${children}`;
    if (isSelectedInfant) query += `&numOfInfant=${infant}`;

    return query;
  },
});

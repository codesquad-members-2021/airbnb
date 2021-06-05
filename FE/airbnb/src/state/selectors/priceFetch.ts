import { selector } from "recoil";
import { checkinDateState, checkoutDateState } from "state/atoms/calendarAtoms";
// import { searchQuery } from "state/selectors/searchQuery";
import { baseURL } from "variable";

interface searchResultType {
  name: string;
  maxPeople: number;
  type: string;
  numOfBed: number;
  numOfBathroom: number;
  price: number;
  mainImageUrl: string;
}

export const priceFetch = selector({
  key: "priceFetch",
  get: async ({ get }) => {
    console.log("priceFetch");
    const checkin = get(checkinDateState);
    const checkout = get(checkoutDateState);
    const isSelectedCheckin = checkin !== "날짜 입력" ? true : false;
    const isSelectedCheckout = checkout !== "날짜 입력" ? true : false;

    const checkinDate = `${checkin.substr(0, 4)}-${checkin.substr(4, 2)}-${checkin.substr(6, 2)}`;
    const checkoutDate = `${checkout.substr(0, 4)}-${checkout.substr(4, 2)}-${checkout.substr(6, 2)}`;

    let query = `?`;
    if (isSelectedCheckin && isSelectedCheckout) {
      query += `&checkInDate=${checkinDate}&checkOutDate=${checkoutDate}`;
    }
    const URL = `${baseURL}/accommodations${query}`;
    const response = await fetch(URL);
    const json = await response.json();
    const priceData = json.map((obj: searchResultType) => obj.price);
    return priceData;
  },
});

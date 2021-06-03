import { selector } from "recoil";
import { searchQuery } from "state/selectors/searchQuery";
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
    const query = get(searchQuery);
    const URL = `${baseURL}/accommodations${query}`;
    const response = await fetch(URL);
    const json = await response.json();
    const priceData = json.map((obj: searchResultType) => obj.price);
    return priceData;
  },
});

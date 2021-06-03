import { atom } from "recoil";

interface searchResultType {
  name: string;
  maxPeople: number;
  type: string;
  numOfBed: number;
  numOfBathroom: number;
  price: number;
  mainImageUrl: string;
}

export const searchResultState = atom<searchResultType[] | null>({
  key: "searchResultState",
  default: null,
});

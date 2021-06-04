import { Dispatch, SetStateAction } from 'react';

export type accommodationOptionType = {
  capacity: number,
  pricePerNight: number,
  accommodationType: string,
  bedroomCount: number,
  restroomCount: number,
  restroomType: string,
  hasKitchen: boolean,
  hasInternet: boolean,
  hasAirconditioner: boolean,
  hasHairdrier: boolean
};

export type HotelDataType = {
  id: number,
  name: string,
  accommodationOption: accommodationOptionType,
  pricePerNight: number,
  totalPrice: number,
  reviewRating: number,
  reviewCounts: number,
  mainImage: string
};

export type HotelListDataType = HotelDataType[];

export type HotelListContextType = {
  hotelListData: HotelListDataType | null,
  setHotelListData: Dispatch<SetStateAction<HotelListDataType | null>> | null
}
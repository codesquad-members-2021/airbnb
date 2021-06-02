import { Dispatch, SetStateAction } from 'react'
import { Moment } from 'moment';

export enum SearchBarBtnType {
  CHECK_IN_OUT = 'check-in-out',
  PRICE = 'price',
  HEAD_COUNT = 'head-count',
}

export type SelectedContentProps = {
  contentType: string
}

export type DayContainerProps = {
  isSelected: boolean,
  isBetween: boolean,
  disabled: boolean
}

export type CalendarContextType = {
  calendars: Moment[];
  setCalendars: Dispatch<SetStateAction<Moment[]>>;
  checkInMoment: Moment | null;
  setCheckInMoment: Dispatch<SetStateAction<Moment | null>>;
  checkOutMoment: Moment | null;
  setCheckOutMoment: Dispatch<SetStateAction<Moment | null>>;
}

export type guestCountStateType = { 
  adults: number, 
  children: number, 
  infants: number 
}

export type HeadCountContextType = {
  guestCountState: guestCountStateType | null,
  setGuestCountState: React.Dispatch<React.SetStateAction<{
    adults: number;
    children: number;
    infants: number;
  }>> | null
}

export type PriceContextType = {
  min: number,
  max: number,
  minPrice: number,
  setMinPrice: Dispatch<SetStateAction<number>>,
  maxPrice: number,
  setMaxPrice: Dispatch<SetStateAction<number>>
}

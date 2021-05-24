import { Dispatch } from 'react';

export interface Location {
    id: number;
    city: string;
}

export interface Date {
    year: number;
    month: number;
    day: number;
}

export interface People {
    guest: number;
    kids: number;
}

export interface ReservationContext {
    location: Location;
    checkIn: Date;
    checkOut: Date;
    fee: number;
    people: People;
}

export type ResercationAction =
    | { type: 'LOCATION'; id: number; city: string }
    | { type: 'CHECKIN'; year: number; month: number; day: number }
    | { type: 'CHECKOUT'; year: number; month: number; day: number }
    | { type: 'PEOPLE'; guest: number; kids: number }
    | { type: 'FEE'; fee: number };

export type SearchAction =
    | { type: 'LOCATION_LIST'; list: Location[] | null }
    | { type: 'LOCATION_LAYER'; state: boolean }
    | { type: 'INPUTOFLOCATION'; value: string }
    | { type: 'CHECKIN_CALENDAR_LAYER'; state: boolean }
    | { type: 'CHECKOUT_CALENDAR_LAYER'; state: boolean };

export type ReservationDispatch = Dispatch<ResercationAction>;

export type SearchDispatch = Dispatch<SearchAction>;

export type LocationList = Location[];

export interface SearcherContext {
    locationList: Location[] | null;
    inputOfLocation: string | null;
    locationLayer: boolean;
    checkInCalendarLayer: boolean;
    checkOutCalendarLayer: boolean;
}

export type Td = {
    classNames: string[] | null;
    dataSets: string[] | null;
    countDay: number;
};

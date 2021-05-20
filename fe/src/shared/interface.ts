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

export type Action =
    | { type: 'LOCATION'; id: number; city: string }
    | { type: 'CHECKIN'; year: number; month: number; day: number }
    | { type: 'CHECKOUT'; year: number; month: number; day: number }
    | { type: 'PEOPLE'; guest: number; kids: number }
    | { type: 'FEE'; fee: number };

export type ReservationDispatch = Dispatch<Action>;

export type LocationList = Location[];

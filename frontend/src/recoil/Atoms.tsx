import { atom } from 'recoil';
import * as T from './AtomTypes';


export const searchBarToggleState = atom<T.SearchBarToggle>({
    key: "searchBarToggleState",
    default:{
        calendar: false,
        roomPrice: false,
        guests: false
    }
})

export const calendarModalState = atom<T.CalendarModal>({
    key: 'calendarModalState',
    default: {
        year: new Date().getFullYear(), //2021
        month: new Date().getMonth() + 1, //5
        today: {
            year: new Date().getFullYear(),
            month: new Date().getMonth() + 1,
            date: new Date().getDate()
        }
    }
})

export const calendarFilterState = atom <T.CalendarFilter>({
    key: "calendarFilterState",
    default:{
        checkIn: {
            month: null,
            date: null,
        },
        checkOut: {
            month: null,
            date: null,
        }
    }
})



export const roomPriceFilterState = atom<T.RoomPriceFilter>({
    key: "roomPriceFilterState",
    default:{
        min: null,
        max: null
    }
})

export const guestFilterState = atom<T.GuestsState>({
    key: "guestFilterState",
    default: {
        adult: null,
        child: null,
        toddler:null
    }
})
import { ReservationContext, ReservationAction } from './interface';

export default function reservationReducer(state: ReservationContext, action: ReservationAction): ReservationContext {
    switch (action.type) {
        case 'RESET_DATE':
            return {
                ...state,
                checkIn: {
                    year: 0,
                    month: 0,
                    day: 0,
                },
                checkOut: {
                    year: 0,
                    month: 0,
                    day: 0,
                },
            };
        case 'LOCATION':
            return {
                ...state,
                location: {
                    id: action.id,
                    city: action.city,
                },
            };
        case 'CHECKIN':
            return {
                ...state,
                checkIn: {
                    year: action.year,
                    month: action.month,
                    day: action.day,
                },
            };
        case 'CHECKOUT':
            return {
                ...state,
                checkOut: {
                    year: action.year,
                    month: action.month,
                    day: action.day,
                },
            };
        case 'PEOPLE':
            return {
                ...state,
                people: {
                    guest: action.guest,
                    kids: action.kids,
                },
            };
        case 'FEE':
            return {
                ...state,
                fee: action.fee,
            };
    }
}

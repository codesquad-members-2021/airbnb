import { dateToString, getDateByTime } from '../components/header/form/calendar/calendarDateFn';

interface apiType {
  url: string;
  getRooms: (
    checkIn: number,
    checkOut: number,
    minCharge: number,
    maxCharge: number,
    guests: number,
    location?: string
  ) => string;
}
export const API: apiType = {
  url: 'http://13.125.35.62',
  getRooms: (checkIn, checkOut, minCharge, maxCharge, guests, location) => {
    const url = API.url;
    const checkInDate = dateToString(getDateByTime(checkIn));
    const checkOutDate = dateToString(getDateByTime(checkOut));
    const query = `check_in=${checkInDate}&check_out=${checkOutDate}&min_charge=${minCharge}&max_charge=${maxCharge}&guests=${guests}`;
    return url + '/accommodations?' + query;
  },
};

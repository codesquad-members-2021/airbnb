import { dateToString, getDateByTime } from '../components/header/form/calendar/calendarDateFn';

interface reserveInfoType {
  address: string;
  checkIn: number;
  checkOut: number;
  minCharge: number;
  maxCharge: number;
  guests: number;
}

interface apiType {
  url: string;
  getRooms: ({
    address,
    checkIn,
    checkOut,
    minCharge,
    maxCharge,
    guests,
  }: reserveInfoType) => string;
}
export const API: apiType = {
  url: 'http://13.125.35.62',
  getRooms: ({ address, checkIn, checkOut, minCharge, maxCharge, guests }) => {
    const url = API.url;
    const checkInDate = dateToString(getDateByTime(checkIn));
    const checkOutDate = dateToString(getDateByTime(checkOut));
    const query = `address=${address}&check_in=${checkInDate}&check_out=${checkOutDate}&min_charge=${minCharge}&max_charge=${maxCharge}&guests=${guests}`;
    return url + '/accommodations?' + query;
  },
};

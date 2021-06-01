import { timeToDate } from '../components/header/form/calendar/calendarDateFn';
import { guestStateType } from '../components/header/form/guestToggle/guestType';

export interface reserveInfoType {
  address: string;
  checkIn: number | null;
  checkOut: number | null;
  minCharge: number;
  maxCharge: number;
  guests: guestStateType;
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
export const serverAPI: apiType = {
  url: 'http://13.125.35.62',
  getRooms: ({ address, checkIn, checkOut, minCharge, maxCharge, guests }) => {
    const checkInDate = timeToDate(checkIn);
    const checkOutDate = timeToDate(checkOut);
    const guestNumber = Object.values(guests).reduce((acc, cur) => acc + cur);
    const query = `city=${address}&check_in=${checkInDate}&check_out=${checkOutDate}&min_charge=${minCharge}&max_charge=${maxCharge}&guests=${guestNumber}`;
    return serverAPI.url + '/accommodations?' + query;
  },
};

export const clientReserveAPI = ({
  address,
  checkIn,
  checkOut,
  minCharge,
  maxCharge,
  guests,
}: reserveInfoType): string => {
  const { adult, child, infants } = guests;
  const query = `address=${address}&check_in=${checkIn}&check_out=${checkOut}&min_charge=${minCharge}&max_charge=${maxCharge}&adult=${adult}&child=${child}&infants=${infants}`;
  return `/accommodations?` + query;
};

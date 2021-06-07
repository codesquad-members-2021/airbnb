export type dateType = {
  year: number;
  month: number;
  day: number;
};

export type check = {
  checkinDate: dateType;
  checkoutDate: dateType;
};

export type checkINOUT = {
  checkin: boolean;
  checkout: boolean;
};

export type calendarDate = {
  year: number;
  month: number;
};

export type SearchBarToggle = {
  calendar: boolean;
  roomPrice: boolean;
  guests: boolean;
};

export type Date = {
  year?: number | null;
  month: number | null;
  date: number | null;
};

export type CalendarModal = {
  year: number;
  month: number;
  nextMonth: number;
  today: Date;
};

export type CalendarFilter = {
  checkIn: Date;
  checkOut: Date;
};

export type RoomPriceFilter = {
  min: number | null;
  max: number | null;
};

export type GuestsState = {
  adult: number | null;
  child: number | null;
  toddler: number | null;
};

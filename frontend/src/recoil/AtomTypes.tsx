export type SearchBarToggle = {
  calendar: boolean;
  roomPrice: boolean;
  guests: boolean;
};

export type Date = {
  year?: number | null;
  dateObj: Object;
  month: number | null;
  date: number | null;
};

export type CalendarModal = {
  year: number;
  month: number;
  today: Date;
};

export type Calendar = {
  checkIn: Date;
  checkOut: Date;
};

export type RoomPrice = {
  min: number | null;
  max: number | null;
};

export type GuestsState = {
  adult: number;
  child: number;
  toddler: number;
  [key: string]: number;
};

export type Calendar = {
  year: number;
  month: number;
  day: number;
  firstDay: number;
};

export type Direction = 1 | -1;

export type OnClickResult = {
  clickedDay: string;
};

export type OnClickDay = {
  onClickDay: (result: OnClickResult) => void;
};

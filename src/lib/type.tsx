type Date = {
  year: number;
  month: number;
  day: number;
};

export type Calendar = Date & {
  firstDay: number;
};

export type _OnClickResult = Date & {
  week: string;
};

export type Direction = 1 | -1;

export type OnClickDay = {
  onClickDay?: (result: _OnClickResult) => void;
};

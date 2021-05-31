type Date = {
  year: number;
  month: number;
  day: number;
};

export type Calendar = {
  year: number;
  month: number;
  day: number;
  firstDay: number;
};

export type CurrentDay = {
  year: number;
  month: number;
};

export type _OnClickResult = Date & {
  week: string;
  type: ClickTargetType;
  nextClickTarget: ClickTargetType;
};

export type Direction = 1 | -1;
export type ClickTargetType = "start" | "end";
export type OnClickDay = {
  onClickDay?: (result: _OnClickResult) => void;
};

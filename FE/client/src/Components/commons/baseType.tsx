export type LocationType = {
  location: boolean;
}

export type ChargeType = {
  charge: boolean;
};

export type PersonnelType = {
  personnel: boolean;
}

export type CalendarType = {
  entryDate: boolean;
}

export type SearchBarType = {
  focus: boolean;
}

export type RangeStateType = {
  rangeState: {
    leftRange: number;
    rightRange: number;
  }
}

export type LocationItemType = {
  name: string;
  avatarUrl: string;
  coordinate: {
    x: number;
    y: number;
  }
}
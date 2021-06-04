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
  x: number;
  y: number;
}

export type HotelListType = {
  coordinate: {
    hotelId: number
    x: number
    y: number
  }
  id: number,
  imageUrl: string,
  maximumOccupancy: number,
  numberOfBathrooms: number,
  numberOfBeds: number,
  oneroom: boolean,
  price: number,
  reviewCount: number,
  reviewStarPoint: number,
  title: string
}
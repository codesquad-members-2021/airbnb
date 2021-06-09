interface IRoomsInfo {
  rooms: IRoomInfo[]
}

interface IRoomInfo {
  id: number,
  
  name: string
  address: string,
  detailAddress: string,

  max: number
  bathroomCount: number,
  bedCount: number,
  commentCount: number,
  latitude: number,
  longitude: number,
  originalPrice: number,
  salePrice: number,
  rating: number

  flexibleRefund: boolean,
  immediateBooking: boolean,

  thumbnails: string[],
  badges: string[],

  option: IRoomOptionInfo
}

interface IRoomOptionInfo {
  [index: string]: boolean
}

// interface IRoomInfo

export type { IRoomInfo, IRoomsInfo }
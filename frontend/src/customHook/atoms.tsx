import { atom } from 'recoil'

//defaultValue
export const defaultValue = {
  placeToSearch: '어디로 여행가세요?',
  checkIn: '날짜입력',
  checkOut: '날짜입력',
}

//Place
export const clickedPlace = atom<string | undefined>({
  key: 'placeToSearch',
  default: defaultValue.placeToSearch,
})

//Calendar
export const checkInMessage = atom<string | number>({
  key: 'checkIn',
  default: defaultValue.checkIn,
})

export const checkOutMessage = atom<string | number>({
  key: 'checkOut',
  default: defaultValue.checkOut,
})

//ClickCheckPlaceToggle
export const clickPlace = atom<boolean>({
  key: 'placeClicked',
  default: false,
})

//ClickCheckIn&Out
export const clickCheckIn = atom<boolean>({
  key: 'checkInClicked',
  default: false,
})
export const clickCheckOut = atom<boolean>({
  key: 'checkOutnClicked',
  default: false,
})

//Fee
export const FeeMin = atom<string | number>({
  key: 'FeeMin',
  default: '금액대 설정',
})
export const FeeMax = atom<null | number>({
  key: 'FeeMax',
  default: null,
})
export const FeeMinChange = atom<number>({
  key: 'minFeePercecnt',
  default: 0,
})
export const FeeMaxChange = atom<number>({
  key: 'maxFeePercecnt',
  default: 0,
})

//personnel
export const personnelAudult = atom<number>({
  key: 'adult',
  default: 0,
})
export const personnelChild = atom<number>({
  key: 'child',
  default: 0,
})
export const personnelBaby = atom<number>({
  key: 'baby',
  default: 0,
})

import { atom, useRecoilValue } from 'recoil'
interface ITotalTypes {
  [key: string]: string | number | undefined
}
//defaultValue________________________________________
export const defaultValue = {
  placeToSearch: '어디로 여행가세요?',
  checkIn: '날짜입력',
  checkOut: '날짜입력',
  fee: '금액대 설정',
  guest: '게스트 추가',
}
//Place_______________________________________________
export const clickedPlace = atom<string | undefined>({
  key: 'placeToSearch',
  default: defaultValue.placeToSearch,
})
//Calendar___________________________________________
export const checkInMessage = atom<string | number>({
  key: 'checkIn',
  default: defaultValue.checkIn,
})
export const checkOutMessage = atom<string | number>({
  key: 'checkOut',
  default: defaultValue.checkOut,
})
//Fee_______________________________________________
export const FeeMin = atom<string | number>({
  key: 'priceMin',
  default: defaultValue.fee,
})
export const FeeMax = atom<number>({
  key: 'priceMax',
  default: 0,
})
export const FeeMinChange = atom<number>({
  key: 'minFeePercecnt',
  default: 0,
})
export const FeeMaxChange = atom<number>({
  key: 'maxFeePercecnt',
  default: 0,
})
//personnel__________________________________________
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
export const personnelMessage = atom<string>({
  key: 'guestMsg',
  default: defaultValue.guest,
})

//ClickCtrl___________________________________________
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

//UseAllRecoilData_______________________________________
export function RecoilValueGroup() {
  const placeToSearch = useRecoilValue(clickedPlace)
  const checkIn = useRecoilValue(checkInMessage)
  const checkOut = useRecoilValue(checkOutMessage)
  const priceMin = useRecoilValue(FeeMin)
  const priceMax = useRecoilValue(FeeMax)
  const minFeePercent = useRecoilValue(FeeMinChange)
  const maxFeePercent = useRecoilValue(FeeMaxChange)
  const adult = useRecoilValue(personnelAudult)
  const child = useRecoilValue(personnelChild)
  const baby = useRecoilValue(personnelBaby)

  return {
    placeToSearch,
    checkIn,
    checkOut,
    priceMin,
    minFeePercent,
    priceMax,
    maxFeePercent,
    adult,
    child,
    baby,
  }
}

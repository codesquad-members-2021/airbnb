import { RefObject } from 'react'
import { atom, useRecoilValue, useSetRecoilState } from 'recoil'
import { dateToString, FilterDateToString } from './useDateInfo'
import { IParams } from '../Interface'
import { getGuestMsg } from '../components/searchBar/personnel/Personnel'
import { getFeeMsg } from '../components/searchBar/fee/Fee'
//defaultValue________________________________________
export const defaultValue = {
  placeAdjacent: '가까운 여행지 둘러보기',
  placeToSearch: '어디로 여행가세요?',
  checkIn: '날짜입력',
  checkOut: '날짜입력',
  fee: '금액대 설정',
  guest: '게스트 추가',
}
//Place_______________________________________________
export const clickedPlace = atom<string | undefined>({
  key: 'place',
  default: defaultValue.placeToSearch,
})
//Calendar___________________________________________
export const checkInMessage = atom<string | number | undefined>({
  key: 'checkIn',
  default: defaultValue.checkIn,
})
export const checkOutMessage = atom<string | number | undefined>({
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
  key: 'minFeePercent',
  default: 0,
})
export const FeeMaxChange = atom<number>({
  key: 'maxFeePercent',
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

//startAtMain_______________________________________________
export const RouterOrSearch = atom<boolean>({
  key: 'isRouter',
  default: true,
})

//RoomData__________________________________________________
export const RoomData = atom({
  key: 'RoomDatas',
  default: [],
})

//UseAllSetRecoilData_______________________________________
export function RecoilSetStateGroup(params: IParams) {
  const setPlace = useSetRecoilState(clickedPlace)
  const setCheckIn = useSetRecoilState(checkInMessage)
  const setCheckOut = useSetRecoilState(checkOutMessage)
  const setPriceMin = useSetRecoilState(FeeMin)
  const setPriceMax = useSetRecoilState(FeeMax)
  const setMinFeePercent = useSetRecoilState(FeeMinChange)
  const setMaxFeePercent = useSetRecoilState(FeeMaxChange)
  const setAdult = useSetRecoilState(personnelAudult)
  const setChild = useSetRecoilState(personnelChild)
  const setBaby = useSetRecoilState(personnelBaby)
  const setGuestMsg = useSetRecoilState(personnelMessage)

  const {
    place,
    checkIn,
    checkOut,
    adult,
    child,
    baby,
    priceMin,
    priceMax,
    maxFeePercent,
    minFeePercent,
  } = params
  const filterUndefined = (date: any) => {
    if (date !== undefined) return date
  }
  setPlace(place === defaultValue.placeToSearch ? '근처 추천 장소' : place)
  setCheckIn(filterUndefined(checkIn))
  setCheckOut(filterUndefined(checkOut))
  const numberTypeAdult = filterUndefined(adult)
  const numberTypeChild = filterUndefined(child)
  const numberTypeBaby = filterUndefined(baby)
  setAdult(numberTypeAdult)
  setChild(numberTypeChild)
  setBaby(numberTypeBaby)
  setGuestMsg(getGuestMsg(numberTypeAdult, numberTypeChild, numberTypeBaby))
  setPriceMin(filterUndefined(priceMin))
  setPriceMax(filterUndefined(priceMax))
  setMinFeePercent(filterUndefined(minFeePercent))
  setMaxFeePercent(filterUndefined(maxFeePercent))
}
export function RecoilValueGroup() {
  const place = useRecoilValue(clickedPlace)
  const checkIn = useRecoilValue(checkInMessage)
  const checkOut = useRecoilValue(checkOutMessage)
  const priceMin = useRecoilValue(FeeMin)
  const priceMax = useRecoilValue(FeeMax)
  const minFeePercent = useRecoilValue(FeeMinChange)
  const maxFeePercent = useRecoilValue(FeeMaxChange)
  const adult = useRecoilValue(personnelAudult)
  const child = useRecoilValue(personnelChild)
  const baby = useRecoilValue(personnelBaby)
  const guestMsg = useRecoilValue(personnelMessage)
  return {
    place,
    checkIn,
    checkOut,
    priceMin,
    minFeePercent,
    priceMax,
    maxFeePercent,
    adult,
    child,
    baby,
    guestMsg,
  }
}

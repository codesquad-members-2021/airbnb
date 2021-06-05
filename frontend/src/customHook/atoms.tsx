import { atom, selector, useRecoilValue, useSetRecoilState } from 'recoil'
import { IParams, INewSetting } from '../Interface'

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
export const FeeMsg = selector({
  key: 'getFeeMsg',
  get({get}){
    const priceMin = get(FeeMin)
    const priceMax = get(FeeMax)
    const minFeePercent = get(FeeMinChange)
    const maxFeePercent = get(FeeMaxChange)
    let feeMsg =
    priceMin === defaultValue.fee
      ? priceMin
      : `${Number(priceMin) + Number(minFeePercent)} ~ ${
          Number(priceMax) - Number(maxFeePercent)
        }원`
    return feeMsg;
  }
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
export const filterPersonnelMessage = selector({
  key: 'returnGuestMsg',
  get({get}){
    const adult=Number(get(personnelAudult))
    const child=Number(get(personnelChild))
    const baby=Number(get(personnelBaby))
    return (adult+child+baby!==0)
    ?`게스트 ${adult + child}명, 유아${baby}명`
    : defaultValue.guest
  }
})

export const totalPerson = selector({
  key: 'totalPersonnel',
   get({get}){
    const adult=get(personnelAudult)
    const child=get(personnelChild)
    const baby=get(personnelBaby)
    return {adult, child, baby}
  },
  set({set}, newValues:any){
    set(personnelAudult, newValues)
    set(personnelChild, newValues)
    set(personnelBaby, newValues)
  }
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
export const RoomData = atom<any>({
  key: 'RoomDatas',
  default: [],
})

//LoginState________________________________________________
export const Login = atom({
  key: 'LoginState',
  default: false,
})

//reserveCheck_Promise ATOM_________________________________
export const reserveMsg = atom({
  key: 'confirmMsg',
  default: false
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
  const filteredMsg = useRecoilValue(filterPersonnelMessage)
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
  setGuestMsg(filteredMsg)
  setPriceMin(filterUndefined(priceMin))
  setPriceMax(filterUndefined(priceMax))
  setMinFeePercent(filterUndefined(minFeePercent))
  setMaxFeePercent(filterUndefined(maxFeePercent))
}

export const RecoilValueGroup = selector({
  key:'recoilValues', 
  get: ({get})=>{
    const place = get(clickedPlace) 
    const checkIn = get(checkInMessage)
    const checkOut = get(checkOutMessage)
    const priceMin =get(FeeMin)
    const priceMax =get(FeeMax)
    const minFeePercent = get(FeeMinChange)
    const maxFeePercent = get(FeeMaxChange)
    const adult = get(personnelAudult)
    const child = get(personnelChild)
    const baby = get(personnelBaby)
    const guestMsg = get(personnelMessage)
  return {place, checkIn, checkOut, priceMin, priceMax, minFeePercent, maxFeePercent, adult, child, baby, guestMsg}
  },
  set:({set}, newValue:any)=>{
    const {place, checkIn, checkOut, priceMin, priceMax, minFeePercent, maxFeePercent, adult, child, baby } = newValue
    set(clickedPlace, place === defaultValue.placeToSearch ? '근처 추천 장소' : place)
    set(checkInMessage, Number(checkIn))
    set(checkOutMessage, Number(checkOut))
    set(personnelAudult, Number(adult))
    set(personnelChild, Number(child))
    set(personnelBaby, Number(baby))
    set(FeeMin, priceMin)
    set(FeeMax, priceMax)
    set(FeeMinChange, minFeePercent)
    set(FeeMaxChange, maxFeePercent)
  }})

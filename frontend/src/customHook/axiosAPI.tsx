import axios from 'axios'
import { FilterDateToForm } from './useDateInfo'
import { defaultValue } from './atoms'
import {IParams} from '../Interface'

export const defaultUrl = `http://13.125.140.183`

export async function getFeeData(
  city: string | undefined,
  checkIn: string | number | undefined,
  checkOut: string | number | undefined
) {
  const query = []
  const skipCase: (string | number | undefined)[] = [
    '가까운 여행지 둘러보기',
    '어디로 여행가세요?',
    '날짜입력',
  ]
  if (!skipCase.includes(checkIn) && !skipCase.includes(checkOut)) {
    query.push(
      `check-in=${FilterDateToForm(Number(checkIn))}&check-out=${FilterDateToForm(
        Number(checkOut)
      )}`
    )
  }
  if (!skipCase.includes(city)) query.push(`city-name=${city}`)
  const url = query.reduce(
    (acc, curr, idx) => acc + curr + (idx < query.length - 1 ? '&' : ''),
    `${defaultUrl}/search/prices?`
  )
  const response = await axios.get(url)
  return response
}

interface DetailProps {
  place: string | undefined
  checkIn: string | number
  checkOut: string | number
  priceMin: string | number
  priceMax: string
  minFeePercent: number
  maxFeePercent: number
  adult: number
  child: number
  baby: number
}

export async function getHouseData(value: any) {

  const {
    place,
    checkIn,
    checkOut,
    priceMin,
    priceMax,
    minFeePercent,
    maxFeePercent,
    adult,
    child,
    baby,
  }: IParams = value
  
  let guestAdult = Number(adult)
  let guestChild = Number(child)
  let guestBaby = Number(baby)

  const query = []
  if (checkIn !== defaultValue.checkIn && checkOut !== defaultValue.checkOut) {
    query.push(
      `check-in=${FilterDateToForm(Number(checkIn))}&check-out=${FilterDateToForm(
        Number(checkOut)
      )}`
    )
  }

  if (place === defaultValue.placeAdjacent) {
    console.log('지역좌표값 보내기')
  } else if (place !== defaultValue.placeToSearch) {
    query.push(`city-name=${place}`)
  }

  if (guestAdult + guestChild + guestBaby !== 0)
    query.push(`adult=${guestAdult}&child=${guestChild}&baby=${guestBaby}`)

  if (priceMin !== defaultValue.fee) {
    query.push(
      `price-min=${Number(priceMin) + Number(minFeePercent)}&price-max=${
        Number(priceMax) + Number(maxFeePercent)
      }`
    )
  }

  const url = query.reduce(
    (acc, curr, idx) => acc + curr + (idx < query.length - 1 ? '&' : ''),
    `${defaultUrl}/search?`
  )
  const response = await axios.get(url)
  return response
}

export async function wishToggle(id:number){
  let url = `${defaultUrl}/rooms/${id}/wish`
  const response = await axios.patch(url)
  return response
}

export async function searchMap(lat:number, lng:number){
  let url = `${defaultUrl}/search/location?latitude=${lat}&longitude=${lng}`
  let result;
  try {
    const response = await axios.get(url)
    result = await response.data
  } catch(e){
    console.error(e)
  }
  return result.rooms
}
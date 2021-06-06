import axios from 'axios'
import { defaultValue } from './atoms'
import { dateToDateForm } from './useDateInfo'
import {IParams} from '../Interface'

export const defaultUrl = `http://13.125.140.183`

export async function getFeeData(
  city: string,
  checkIn: string | number,
  checkOut: string | number
) {
  const query = []
  const skipCase: (string | number)[] = [
    '가까운 여행지 둘러보기',
    '어디로 여행가세요?',
    '날짜입력',
  ]
  if (!skipCase.includes(checkIn) && !skipCase.includes(checkOut)) {
    query.push(
      `check-in=${dateToDateForm(checkIn)}&check-out=${dateToDateForm(checkOut)}`
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
      `check-in=${dateToDateForm(Number(checkIn))}&check-out=${dateToDateForm(
        Number(checkOut)
      )}`
    )
  }

  if(place !== defaultValue.placeToSearch || place !== defaultValue.placeAdjacent) {
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
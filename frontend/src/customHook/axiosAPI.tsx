import axios from 'axios'
import { FilterDateToString, FilterDateToForm } from './useDateInfo'
import { defaultValue } from './atoms'

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
    query.push(`check-in=${FilterDateToForm(checkIn)}&check-out=${FilterDateToForm(checkOut)}`)
  }
  if (!skipCase.includes(city)) query.push(`city-name=${city}`)
  const url = query.reduce(
    (acc, curr, idx) => acc + curr + (idx < query.length - 1 ? '&' : ''),
    `http://13.125.140.183/search/prices?`
  )
  console.log(url)
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
  }: DetailProps = value

  let guestAdult = Number(adult)
  let guestChild = Number(child)
  let guestBaby = Number(baby)

  const query = []
  if (typeof checkIn !== defaultValue.checkIn && typeof checkOut === defaultValue.checkOut) {
    query.push(
      `check-in=${FilterDateToString(Number(checkIn))}&check-out=${FilterDateToString(
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
    `http://13.125.140.183/search?`
  )

  const response = await axios.get(url)
  return response
}

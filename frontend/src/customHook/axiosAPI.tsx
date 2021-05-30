import axios from 'axios'
import { dateToDateForm } from './useDateInfo'

export async function getFeeData(
  city: string | undefined,
  checkIn: string | number,
  checkOut: string | number
) {
  const query = []
  const skipCase: (string | number | undefined)[] = [
    '가까운 여행지 둘러보기',
    '어디로 여행가세요?',
    '날짜입력',
  ]

  if (!skipCase.includes(checkIn) && !skipCase.includes(checkOut)) {
    query.push(`check-in=${dateToDateForm(checkIn)}&check-out=${dateToDateForm(checkOut)}`)
  }
  if (!skipCase.includes(city)) query.push(`city-name=${city}`)
  const url = query.reduce(
    (acc, curr, idx) => acc + curr + (idx >= 0 && idx < query.length - 1 ? '&' : ''),
    `http://13.125.140.183/search/prices?`
  )
  const response = await axios.get(url)

  return response
}

export async function getHouseData(
  placeToSearch: string | undefined,
  checkIn: string | number,
  checkOut: string | number,
  MIN: number | undefined,
  MAX: number | undefined,
  adult: number,
  child: number,
  baby: number
) {
  let url = `http://13.125.140.183/search?check-in=${checkIn}&check-out=${checkOut}&city-name=${placeToSearch}&adult=${adult}&child=${child}&baby=${baby}&price-min=${MIN}&price-max=${MAX}`
  const response = await axios.get(url)
  return response
}

// /search?check-in=:check-in&check-out=:check-out&city-name=:city-name&adult=:adult&child=:child&baby=:baby&price-min=:price-min&price-max=:price-max

/*API정보
  getFeeData
  기본 `http://13.125.140.183/search/prices`
  지역 `http://13.125.140.183/search/prices?city-name=:city-name`
  날짜  `http://13.125.140.183/search/prices?check-in=:check-in&check-out=:check-out`
  둘다  `http://13.125.140.183/search/prices?check-in=:check-in&check-out=:check-out&city-name=:city-name`
*/

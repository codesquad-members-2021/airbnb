import axios from 'axios'
import { dateToDateForm } from './useDateInfo'
import { useRecoilValue } from 'recoil'
import { checkInMessage } from './atoms'

async function getFeeData(
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

  console.log(url)
  const response = await axios.get(`http://13.125.140.183/search/prices`)
  //기본 `http://13.125.140.183/search/prices`
  //지역 `http://13.125.140.183/search/prices?city-name=:city-name`
  //날짜  `http://13.125.140.183/search/prices?check-in=:check-in&check-out=:check-out`
  //둘다  `http://13.125.140.183/search/prices?check-in=:check-in&check-out=:check-out&city-name=:city-name`

  return response
}

export default getFeeData

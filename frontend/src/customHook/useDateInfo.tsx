import { defaultValue } from './atoms'
interface IDate {
  year: number
  month: number
  date: number
  day: number
  dateOfLast: number
}

export const DateInfo = (today: Date): IDate => {
  const year = today.getFullYear()
  const month = today.getMonth() + 1
  const date = today.getDate()
  const day = today.getDay()
  const dateOfLast = new Date(year, month, 0).getDate()
  return { year, month, date, day, dateOfLast }
}

export const dateToString = (clickedDate: string | number): string => {
  console.log(clickedDate, typeof clickedDate)
  if (typeof clickedDate === 'string') return clickedDate
  return new Date(clickedDate).getMonth() + 1 + '월' + new Date(clickedDate).getDate() + '일'
}

export const dateToDateForm = (dateNumber: number | string) => {
  console.log(typeof dateNumber)
  if (typeof dateNumber === 'string') return null
  const year = new Date(dateNumber).getFullYear()
  const month = new Date(dateNumber).getMonth() + 1
  const date = new Date(dateNumber).getDate()
  return `${year}-${month < 10 ? '0' + month : month}-${date < 10 ? '0' + date : date}`
}

import { PersonnelAtomType } from "@/recoil/atoms";
import { getFormattingDateFromTime } from '@/utils/calendarUtil';

export const delay = (ms: number) => new Promise((_) => setTimeout(_, ms));

export const getNumberOfGuest = ({ adult, child, baby }: PersonnelAtomType) => {
  const adultNum = Number(adult);
  const childNum = Number(child);
  const babyNum = Number(baby);
  const guest = `게스트 ${adultNum + childNum}명`;
  const young = babyNum ? `, 유아 ${babyNum}명` : '';

  return (!adultNum && !childNum && !babyNum)
    ? '게스트추가' : guest + young;
}

type UserDateType = {
  checkIn: number;
  checkOut: number;
}

export const getUserDate = ({ checkIn, checkOut }: UserDateType) => {
  const allSelect = checkOut &&
    getFormattingDateFromTime(checkIn) + ' ~ ' + getFormattingDateFromTime(checkOut);
  const checkInSelect = (!checkOut && checkIn) &&
    getFormattingDateFromTime(checkIn) + ' ~ ' + getFormattingDateFromTime(checkIn);
  const notSelect = !checkIn && '일정입력';

  return allSelect || checkInSelect || notSelect;
}

type QueryStringType = {
  [key: string]: string | number;
}

export const makeQueryString = (object: QueryStringType) => {
  return Object.keys(object)
    .map(key => `${encodeURIComponent(key)}=${object[key] || object[key] === 0 ? encodeURIComponent(object[key]) : ''}`)
    .join('&');
}
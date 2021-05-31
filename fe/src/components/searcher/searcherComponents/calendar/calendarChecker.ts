import { Date as IDate } from '../../../../shared/interface';

export const getDateSum = ({ year, month, day }: IDate): number => {
    return year * 365 + month * 31 + day;
};

export const isBefore = (targetDateSum: number, criterionDateSum: number): boolean => {
    return targetDateSum <= criterionDateSum;
};

export const isNotCheckedDate = ({ year, month, day }: IDate): boolean => {
    return year === 0 && month === 0 && day === 0;
};

export const isPossibleToCheckDate = (dataSets: string[] | null): boolean => {
    const today = new Date();

    if (!dataSets || !dataSets.length) return true;
    const targetDate = new Date(dataSets[1]);
    const targetDateSum = getDateSum({
        year: targetDate.getFullYear(),
        month: targetDate.getMonth() + 1,
        day: Number(dataSets[0]),
    });
    const todaySum = getDateSum({ year: today.getFullYear(), month: today.getMonth() + 1, day: today.getDate() });
    return isBefore(todaySum, targetDateSum);
};

const checkDate = (checkState: IDate) => (dataSets: string[] | null) => {
    if (!dataSets || !dataSets.length) return false;
    const { year, month, day } = checkState;
    const targetDate = new Date(dataSets[1]);
    return year === targetDate.getFullYear() && month === targetDate.getMonth() + 1 && day === +dataSets[0];
};

const checkBetweenDate = (checkIn: IDate, checkOut: IDate) => (dataSets: string[] | null) => {
    if (!dataSets || !dataSets.length) return false;
    const checkInDateSum = getDateSum(checkIn);
    const checkOutDateSum = getDateSum(checkOut);
    const targetDate = new Date(dataSets[1]);
    const targetDateSum = getDateSum({
        year: targetDate.getFullYear(),
        month: targetDate.getMonth() + 1,
        day: Number(dataSets[0]),
    });
    return targetDateSum > checkInDateSum && targetDateSum < checkOutDateSum;
};

type UtilFnsType = (dataSets: string[] | null) => boolean;

interface IUtilFns {
    isCheckInDate: UtilFnsType;
    isCheckOutDate: UtilFnsType;
    isBetweenDate: UtilFnsType;
}

const calendarUtilFns = (checkIn: IDate, checkOut: IDate): IUtilFns => {
    return {
        isCheckInDate: checkDate(checkIn),
        isCheckOutDate: checkDate(checkOut),
        isBetweenDate: checkBetweenDate(checkIn, checkOut),
    };
};

export const getTypeOfDate = (dataSets: string[] | null, checkIn: IDate, checkOut: IDate): string => {
    if (!dataSets || !dataSets.length) return 'default';
    const { isCheckInDate, isCheckOutDate, isBetweenDate } = calendarUtilFns(checkIn, checkOut);
    if (isCheckInDate(dataSets)) return 'checkIn';
    if (isCheckOutDate(dataSets)) return 'checkOut';
    if (isBetweenDate(dataSets)) return 'between';
    return 'default';
};

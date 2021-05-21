import { Td } from '../../../../../shared/interface';

export const getInitialDate = (): Date[] => {
    const monthForChange = new Date().getMonth();
    const queue = [];
    for (let i = -1; i < 4; i++) {
        const currDate = new Date();
        currDate.setDate(1);
        currDate.setMonth(monthForChange + i);
        queue.push(currDate);
    }
    return queue;
};

export const getFirstDay = (yy: number, mm: number): Date => new Date(yy, mm, 1);

export const getLastDay = (yy: number, mm: number): Date => new Date(yy, mm + 1, 0);

export const loadYYMM = (fullDate: Date) => {
    const today = new Date();
    const yy: number = fullDate.getFullYear();
    const mm: number = fullDate.getMonth();
    const firstDay: Date = getFirstDay(yy, mm);
    const lastDay: Date = getLastDay(yy, mm);
    let markToday;

    if (mm === today.getMonth() && yy === today.getFullYear()) markToday = today.getDate();

    const table = [];
    let startCount = 0;
    let countDay = 0;
    for (let i = 0; i < 5; i++) {
        const tbody = [];
        for (let j = 0; j < 7; j++) {
            if (i === 0 && !startCount && j === firstDay.getDay()) startCount = 1;
            const tdObj = {
                classNames: [],
                dataSets: [],
                countDay: 0,
            } as Td;
            if (startCount) {
                const classNames = ['day'];
                const dataSets = [`${countDay + 1}`, `${fullDate}`];
                markToday && markToday === countDay + 1 && classNames.push('today');
                tdObj.classNames = [...classNames];
                tdObj.dataSets = [...dataSets];
                tdObj.countDay = ++countDay;
            }
            if (countDay === lastDay.getDate()) startCount = 0;
            tbody.push(tdObj);
        }
        table.push(tbody);
    }
    return table;
};

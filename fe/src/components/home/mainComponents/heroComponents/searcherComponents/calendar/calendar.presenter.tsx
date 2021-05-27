import { CalendarBox, CalendarList, CalendarTitle, Dates, Day, DayName, Week } from './calendar.style';
import { loadYYMM } from './calendarDate';
import { Td, Date as IDate } from '../../../../../../shared/interface';
import { isPossibleToCheckDate, getTypeOfDate } from './calendarChecker';

interface CalendarPresenterProps {
    checkIn: IDate;
    checkOut: IDate;
    handleCheckDate: (event: React.MouseEvent<HTMLElement>, dataSets: string[] | null, possibleDate: boolean) => void;
}

interface WeekProps extends CalendarPresenterProps {
    days: Td[];
}

interface MonthProps extends CalendarPresenterProps {
    calendarQueue: Date[];
    x: number;
    transitionValue: string;
}

export function MonthsPresenter(props: MonthProps) {
    const { checkIn, checkOut, handleCheckDate, calendarQueue, x, transitionValue } = props;
    return (
        <CalendarList x={x} transitionValue={transitionValue}>
            {calendarQueue.map((date) => {
                const dateTable = loadYYMM(date);
                return (
                    <CalendarBox>
                        <CalendarTitle>
                            {date.getFullYear()}년 {date.getMonth() + 1}월
                        </CalendarTitle>
                        <Week>
                            {['일', '월', '화', '수', '목', '금', '토'].map((day) => (
                                <DayName>{day}</DayName>
                            ))}
                        </Week>
                        <Dates>
                            {dateTable.map((days) => (
                                <WeekPresenter {...{ days, checkIn, checkOut, handleCheckDate }} />
                            ))}
                        </Dates>
                    </CalendarBox>
                );
            })}
        </CalendarList>
    );
}

function WeekPresenter(props: WeekProps) {
    const { days, checkIn, checkOut, handleCheckDate } = props;
    return (
        <Week>
            {days.map((day) => {
                const { classNames, countDay, dataSets } = day;
                const className = classNames?.reduce((acc, val) => acc + ` ${val}`, ``);
                const possibleDate = isPossibleToCheckDate(dataSets);
                return (
                    <Day
                        className={className}
                        possible={possibleDate}
                        typeOfDate={getTypeOfDate(dataSets, checkIn, checkOut)}
                        onClick={(e) => handleCheckDate(e, dataSets, possibleDate)}
                    >
                        {countDay !== 0 && countDay}
                    </Day>
                );
            })}
        </Week>
    );
}

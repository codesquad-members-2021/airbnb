import styled, { css } from 'styled-components'

import { DateInfo } from '../../customHook/useDateInfo'

interface IDate {
	currentMonth: number
	handleDateCLick: (year?: number, currentMonth?: number, dateEl?: number | null) => void
	setActivation: any
}
interface IClick {
	nonClickable: boolean
	onClick: () => void
}

const Calendar: React.FunctionComponent<IDate> = ({
	currentMonth,
	handleDateCLick,
	setActivation,
}) => {
	const MonthList = Array.from({ length: 12 }, (_, i) => i + 1)
	const dayList: string[] = ['일', '월', '화', '수', '목', '금', '토']
	let { year, month, date } = DateInfo(new Date())
	let currentYear = year
	let index
	if (currentMonth > 12) {
		index = (currentMonth % 12) - 1
		year += Math.floor(currentMonth / 12)
		currentMonth = MonthList[index]
	} else if (currentMonth < 1) {
		index = (currentMonth % 12) + 12
		year =
			currentMonth === 0
				? year + Math.floor(currentMonth - 1 / 12)
				: year + Math.floor(currentMonth / 12)
		currentMonth = MonthList[index - 1]
	}
	const { day: dayOfFirst, dateOfLast } = DateInfo(new Date(`${year}-${currentMonth}-1`))

	const DateArray = Array.from({ length: dateOfLast + dayOfFirst }, (_, i) => {
		if (i < dayOfFirst) return null
		return i - dayOfFirst + 1
	})

	const nonClickableCheck = (dateEl: number | null): boolean => {
		if (typeof dateEl === 'number') {
			if (
				year < currentYear ||
				(year === currentYear && currentMonth < month) ||
				(year === currentYear && currentMonth === month && date > dateEl)
			) {
				setActivation(false)
				return false
			}
			setActivation(true)
			return true
		}
		setActivation(false)
		return false
	}
	return (
		<CalendarBox>
			<DayBlock>
				{dayList.map((day, idx) => (
					<Day key={idx}>{day}</Day>
				))}
			</DayBlock>
			<NonFixedArea>
				<YearMonth>
					{year}년&nbsp;&nbsp;{currentMonth}월
				</YearMonth>
				<DateSection>
					{DateArray.map((dateEl, idx) => (
						<DateBlock
							key={idx}
							nonClickable={nonClickableCheck(dateEl)}
							onClick={() => handleDateCLick(year, currentMonth, dateEl)}
						>
							{dateEl}
						</DateBlock>
					))}
				</DateSection>
			</NonFixedArea>
		</CalendarBox>
	)
}
const CalendarBox = styled.div`
	margin: 65px 90px;
`

const DateSection = styled.div`
	display: grid;
	grid-template-columns: repeat(7, 1fr);
	grid-template-rows: repeat(6, 1fr);
	margin-top: 55px;
`
const DateBlock = styled.div<IClick>`
	width: 50px;
	height: 50px;
	margin-top: 4px;
	font-weight: ${(props) => props.theme.fontWeight.w2};
	font-size: ${(props) => props.theme.fontSize.super_sm};
	display: flex;
	align-items: center;
	justify-content: center;
	color: ${(props) => props.theme.color.grey_2};
	${(props) =>
		props.nonClickable &&
		css`
			color: ${props.theme.color.black};
			&:hover {
				border: 1px solid;
				border-radius: 50%;
				cursor: pointer;
			}
		`};
`
const NonFixedArea = styled.div`
	width: 336px;
	text-align: center;
`
const YearMonth = styled.div`
	font-weight: ${(props) => props.theme.fontWeight.w2};
`
const DayBlock = styled.div`
	display: flex;
	position: absolute;
	top: 125px;
`
const Day = styled.div`
	color: ${(props) => props.theme.color.grey_3};
	font-size: ${(props) => props.theme.fontSize.super_sm};
	width: 50px;
	text-align: center;
`

export default Calendar

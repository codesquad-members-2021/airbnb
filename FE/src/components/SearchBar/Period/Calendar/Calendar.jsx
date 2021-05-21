import styled from "styled-components";
import Day from "./Day";

const makeMonthArray = (year, month) => {
	const firstDay = new Date(year, month, 1).getDay();
	const sumDay = new Date(year, month + 1, 0).getDate();

	const monthArray = [];
	let weekArray = [];
	for (let count = 1 - firstDay; count <= sumDay; count++) {
		if (weekArray.length === 7) {
			monthArray.push(weekArray);
			weekArray = [];
		}
		weekArray.push(count);
	}
	if (weekArray.length > 0) monthArray.push(weekArray);

	return monthArray;
};

const fixMonth = (year, month) => {
	if (0 <= month && month <= 11) return [year, month];
	return month < 0 ? fixMonth(year - 1, month + 12) : fixMonth(year + 1, month - 12);
};

const Calendar = ({ modifier, period }) => {
	const now = new Date(Date.now());
	const [year, month] = fixMonth(now.getFullYear(), now.getMonth() + modifier);
	const monthArray = makeMonthArray(year, month);
	return (
		<CalendarWrapper>
			<CalendarTitle>{`${year}년 ${month + 1}월`}</CalendarTitle>
			<CalendarBody>
				<Week>
					<tr>
						<th>일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th>토</th>
					</tr>
				</Week>
				<tbody>
					{monthArray.map((el) => (
						<tr key={el}>
							{el.map((v) => (
								<Day date={new Date(year, month, v)} period={period} key={v}>
									{v > 0 && v}
								</Day>
							))}
						</tr>
					))}
				</tbody>
			</CalendarBody>
		</CalendarWrapper>
	);
};

const CalendarWrapper = styled.div`
	width: 336px;
	min-width: 336px;
	height: 383px;
	& + & {
		margin-left: 50px;
	}
`;
const CalendarTitle = styled.div`
	width: 336px;
	height: 23px;
	font-weight: bold;
	font-size: 16px;
	line-height: 23px;
	display: flex;
	justify-content: center;
	color: #010101;
`;
const CalendarBody = styled.table`
	width: 336px;
	margin-top: 24px;
`;
const Week = styled.thead`
	th {
		width: 48px;
		height: 24px;
		font-size: 12px;
		line-height: 17px;
		color: #828282;
	}
`;

export default Calendar;

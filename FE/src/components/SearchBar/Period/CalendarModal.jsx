import styled from "styled-components";

const CalendarModal = () => {
	const modifier = 0;
	return (
		<CalendarModalWrapper>
			<Container>
				<Calendar modifier={modifier} />
				<Calendar modifier={modifier + 1} />
				<Calendar modifier={modifier + 2} />
				<Calendar modifier={modifier + 3} />
			</Container>
			<SlideButton type="LEFT" />
			<SlideButton type="RIGHT" />
		</CalendarModalWrapper>
	);
};

const makeMonthArray = (modifier = 0) => {
	const now = new Date(Date.now());
	const [year, month] = [now.getFullYear(), now.getMonth() + modifier];
	const firstDay = new Date(year, month, 1).getDay(); // 6=토요일
	const sumDay = new Date(year, month + 1, 0).getDate();

	const monthArray = [];
	let tempArr = [];
	for (let count = 1 - firstDay; count <= sumDay; count++) {
		if (tempArr.length === 7) {
			monthArray.push(tempArr);
			tempArr = [];
		}
		tempArr.push(count);
	}
	if (tempArr.length > 0) monthArray.push(tempArr);

	return monthArray;
};

const Calendar = ({ modifier }) => {
	const now = new Date(Date.now());
	const [year, month] = [now.getFullYear(), now.getMonth() + modifier];
	const monthArray = makeMonthArray(modifier);
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
								<Day key={v}>{v > 0 && v}</Day>
							))}
						</tr>
					))}
				</tbody>
			</CalendarBody>
		</CalendarWrapper>
	);
};

const SlideButton = ({ type }) => (
	<SlideButtonWrapper type={type}>
		{type === "LEFT" ? (
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path d="M15 18L9 12L15 6" stroke="#111111" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
			</svg>
		) : (
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path d="M9 18L15 12L9 6" stroke="#111111" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
			</svg>
		)}
	</SlideButtonWrapper>
);

const CalendarModalWrapper = styled.div`
	position: absolute;
	top: 76px;
	width: 916px;
	height: 512px;

	background: #fff;
	box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
	border-radius: 40px;
`;
const Container = styled.div`
	position: absolute;
	width: 722px;
	height: 383px;
	top: 70px;
	left: 97px;
	display: flex;
	/* overflow: hidden; */
	border: 1px solid red;
`;
const CalendarWrapper = styled.div`
	width: 336px;
	min-width: 336px;
	height: 383px;
	& + & {
		margin-left: 50px;
	}
	border: 1px solid green;
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
	/* height: 336px; */

	margin-top: 24px;
	border: 1px solid blue;
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
const Day = styled.td`
	width: 48px;
	height: 48px;
	font-weight: bold;
	font-size: 12px;
	line-height: 17px;
	text-align: center;
	vertical-align: middle;
	color: #bdbdbd;
`;
const SlideButtonWrapper = styled.div`
	position: absolute;
	top: 70px;
	left: ${({ type }) => (type === "LEFT" ? "97px" : "795px")};
`;

export default CalendarModal;

import styled from "styled-components";

const packDate = (date) => {
	const year = date.getFullYear();
	const month = date.getMonth();
	const day = date.getDate();
	return `${year}-${month < 9 ? "0" + (month + 1).toString() : month + 1}-${day < 10 ? "0" + day.toString() : day}`;
};

const parseDate = (date) => {
	const year = date.slice(0, 4);
	const month = date.slice(5, 7);
	const day = date.slice(8, 10);
	return new Date(parseInt(year), parseInt(month) - 1, parseInt(day));
};

const Day = ({ date, period, disable, children }) => {
	const { start, setStart, end, setEnd } = period;
  
	let type =
		date < Date.now() || !disable
			? "OLD"
			: date > parseDate(start) && date < parseDate(end)
			? "BETWEEN"
			: packDate(date) === start || packDate(date) === end
			? "CHECKED"
			: "NORMAL";

	const setPeriod = () => {
		if (type !== "NORMAL" && type !== "BETWEEN") return;
		if (!start && !end) return setStart(() => packDate(date));
		if (parseDate(start) > date) {
			if (!end) setEnd(() => start);
			return setStart(() => packDate(date));
		} else {
			return setEnd(() => packDate(date));
		}
	};

	return (
		<DayWrapper type={type} onClick={setPeriod}>
			{children}
		</DayWrapper>
	);
};

const dayType = {
	OLD: { color: "#BDBDBD" },
	NORMAL: { color: "#333" },
	BETWEEN: { color: "#333", background: "#F5F5F7" },
	CHECKED: { color: "#FFF", background: "#333", borderRadius: "30px" },
};
const DayWrapper = styled.td.attrs(({ type }) => ({
	style: dayType[type],
}))`
	width: 48px;
	height: 48px;
	font-weight: bold;
	font-size: 12px;
	line-height: 17px;
	text-align: center;
	vertical-align: middle;
`;

export default Day;

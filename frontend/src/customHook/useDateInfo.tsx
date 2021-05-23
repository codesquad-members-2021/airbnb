interface IDate {
	year: number
	month: number
	date: number
	day: number
	dateOfLast: number
}

// const monthList = Array.from({ length: 12 }, (v, idx) => idx + 1)

export const DateInfo = (today: Date): IDate => {
	const dateList = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
	const year = today.getFullYear()
	const month = today.getMonth() + 1
	const date = today.getDate()
	const day = today.getDay()

	const checkFeb = () => {
		if (year % 4 === 0) dateList[1] = 29
		return dateList[1]
	}

	// const dayOfFirst = new Date(`${year}-${month}-1`).getDate()
	const dateOfLast = dateList[month === 2 ? checkFeb() : month - 1]

	return { year, month, date, day, dateOfLast }
}

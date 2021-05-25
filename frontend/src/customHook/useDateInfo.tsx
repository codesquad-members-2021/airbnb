interface IDate {
	year: number
	month: number
	date: number
	day: number
	dateOfLast: number
}

// const monthList = Array.from({ length: 12 }, (v, idx) => idx + 1)

export const DateInfo = (today: Date): IDate => {
	const year = today.getFullYear()
	const month = today.getMonth() + 1
	const date = today.getDate()
	const day = today.getDay()
	const dateOfLast = new Date(year, month - 1, 0).getDate()

	return { year, month, date, day, dateOfLast }
}

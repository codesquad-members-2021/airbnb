const parseDate = (date) => {
	const year = date.slice(0, 4);
	const month = date.slice(5, 7);
	const day = date.slice(8, 10);
	return new Date(parseInt(year), parseInt(month) - 1, parseInt(day));
};

export default parseDate
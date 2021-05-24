import React from 'react';

const YearMonth = ({ range }) => {
  console.log(range);
  const Today = new Date();
  const calcMonth = (year, mon) => {
    if (mon <= 0) {
      let count = Math.floor(Math.abs(mon / 12)) + 1;
      mon += 12 * count;
      year = year - count;
    } else if (mon >= 13) {
      let count = Math.ceil(Math.abs(mon / 12)) - 1;
      mon -= 12 * count;
      year = year + count;
    }
    return `${year}년 ${mon}월`;
  };

  return <>{calcMonth(Today.getFullYear(), Today.getMonth() + 1 + range)}</>;
};

export default YearMonth;

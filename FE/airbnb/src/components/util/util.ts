export const getNumberWithComma = (num: number): string => {
  const numArr = (num + '').split('');
  const numArrWithComma = numArr.reverse().reduce((acc: string[], cur: string, idx, arr) => {
    if (idx !== arr.length - 1 && (idx + 1) % 3 === 0) acc.push(cur, ',');
    else acc.push(cur);
    return acc;
  }, []);
  return numArrWithComma.reverse().join('');
};

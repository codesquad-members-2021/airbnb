interface Args {
  dataArr: number[];
  sections: number;
}

const getChartData = ({ dataArr, sections }: Args) => {
  let priceData = [...dataArr];
  priceData.sort((a, b) => b - a);
  const minPrice = priceData[priceData.length - 1];
  const maxPrice = priceData[0];
  const gap = (maxPrice - minPrice) / sections;
  const average = priceData.reduce((a, b) => a + b) / priceData.length;
  const averagePrice = Math.round(average);
  let currPrice = minPrice;
  let endIdx = priceData.length - 1;

  const getNumber = (n: number): any => {
    if (currPrice <= priceData[endIdx] && currPrice + gap > priceData[endIdx]) {
      priceData.pop();
      endIdx -= 1;
      return getNumber(n + 1);
    } else return n;
  };

  let rangeArr = new Array(sections + 1).fill(0);
  const priceChartData = rangeArr.map((n) => {
    const num = getNumber(n);
    currPrice += gap;
    return num;
  });

  return {
    priceChartData,
    minPrice,
    maxPrice,
    averagePrice,
  };
};

export default getChartData;

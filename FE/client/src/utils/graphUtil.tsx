export const getConvertedChartPrices = (priceArray: Array<number>): Array<Array<number>> => {
  const sortedPrices = [...priceArray].sort((a, b) => a - b);
  const PRICE_POINT = 20000;
  const MAX_PRICE = 1000000;
  let currentPrice = 0;

  const resultArray = sortedPrices.reduce((acc: Array<Array<number>>, price) => {
    if (currentPrice === MAX_PRICE) {
      acc[acc.length - 1].push(price);
      return acc;
    }
    while (!(currentPrice < price && price <= currentPrice + PRICE_POINT) && currentPrice < MAX_PRICE) {
      currentPrice += PRICE_POINT;
      acc.push([]);
    }
    acc[acc.length - 1].push(price);
    return acc;
  }, [[]]);

  return resultArray;
}

export type GraphType = {
  rangeState: {
    left: number,
    right: number
  };
  priceArray: Array<Array<number>>
}

export const getAveragePrice = ({ rangeState: { left, right }, priceArray }: GraphType) => {
  const priceArrayLength = priceArray.length;

  const selectedPriceArray = priceArray.map((count, idx) => {
    const isSelect = (left / (100 / priceArrayLength)) <= idx && idx < Math.floor(right / (100 / priceArrayLength));
    return isSelect ? count : 0;
  });

  const flattenedPriceArray = selectedPriceArray.flat();

  const totalPrice = flattenedPriceArray.reduce((acc, cur) => acc + cur, 0);
  const selectedPriceCount = flattenedPriceArray.filter(price => price).length;

  return Math.floor(totalPrice / selectedPriceCount);
}

type priceCountArrayType = {
  priceCountArray: Array<number>;
}

export const getOnePriceSize = ({ priceCountArray }: priceCountArrayType) => {
  const maxSize = Math.max(...priceCountArray);
  const oneSize = 100 / maxSize;
  return oneSize;
}

type getLinesType = priceCountArrayType & {
  oneSize: number;
}

export const getLines = ({ oneSize, priceCountArray }: getLinesType) => {
  return `00, 100 \n ${priceCountArray.map((count, idx) => {
    return `${idx * 10}, ${count ? 100 - (count * oneSize) : 100}`;
  }).join('\n')}\n 500,100`;
}

type getSelectedLinesType = getLinesType & {
  rangeState: {
    left: number,
    right: number
  };
};

export const getSelectedLines = ({ priceCountArray, oneSize, rangeState: { left, right } }: getSelectedLinesType) => {
  const firstSelectIndex = priceCountArray.findIndex((_, idx) => {
    return left / (100 / priceCountArray.length) <= idx;
  })

  const lastSelectIndex = [...priceCountArray].reverse().findIndex((_, idx) => {
    return right / (100 / priceCountArray.length) < idx + 2;
  })

  const selectedLine = `00, 100 \n ${priceCountArray.map((count, idx) => {
    const isSelect = (left / (100 / priceCountArray.length)) <= idx && idx < Math.floor(right / (100 / priceCountArray.length));
    const firstSelected = firstSelectIndex === idx ? `${idx * 10}, 100` : '';
    const lastSelected = lastSelectIndex === idx ? `${idx * 10}, 100` : '';
    return `${firstSelected} ${idx * 10}, ${isSelect ? 100 - (count * oneSize) : 100} ${lastSelected}`;
  }).join('\n')}\n 500,100`;

  return selectedLine;
}
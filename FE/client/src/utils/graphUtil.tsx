import { RangeStateType } from "@/Components/commons/baseType";

export const getConvertedChartPrices = (priceArray: Array<number>): Array<Array<number>> => {
  const sortedPrices = [...priceArray].sort((a, b) => a - b);
  const PRICE_POINT = 20000;
  const MAX_PRICE = 1000000;
  let currentPrice = 0;

  const priceList = sortedPrices.reduce((acc: Array<Array<number>>, price) => {
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

  const lengthToFill = 51 - priceList.length;
  const resultArray = [...priceList, ...Array.from({ length: lengthToFill }, () => [])];
  return resultArray;
}

export type GraphType = RangeStateType & {
  priceArray: Array<Array<number>>
}

export const getAveragePrice = ({ rangeState: { leftRange, rightRange }, priceArray }: GraphType) => {
  const priceArrayLength = priceArray.length;

  const selectedPriceArray = priceArray.map((count, idx) => {
    const isSelect = (leftRange / (100 / priceArrayLength)) <= idx && idx < Math.floor(rightRange / (100 / priceArrayLength));
    return isSelect ? count : 0;
  });

  const flattenedPriceArray = selectedPriceArray.flat();

  const totalPrice = flattenedPriceArray.reduce((acc, cur) => acc + cur, 0);
  const selectedPriceCount = flattenedPriceArray.filter(price => price).length;

  return Math.floor(totalPrice / selectedPriceCount);
}

type PriceCountArrayType = {
  priceCountArray: Array<number>;
}

export const getOnePriceSize = ({ priceCountArray }: PriceCountArrayType) => {
  const maxSize = Math.max(...priceCountArray);
  const oneSize = 100 / maxSize;
  return oneSize;
}

type LinesType = PriceCountArrayType & {
  oneSize: number;
  viewBoxPosition: {
    minX: number;
    minY: number;
    width: number;
    height: number;
  }
}

export const getLines = ({ oneSize, priceCountArray, viewBoxPosition }: LinesType) => {
  const { minY, width, height } = viewBoxPosition;
  return `${minY}, ${height} \n ${priceCountArray.map((count, idx) => {
    return `${idx * 10}, ${count ? 100 - (count * oneSize) : 100}`;
  }).join('\n')}\n ${width},${height}`;
}

type SelectedLinesType = LinesType & RangeStateType;

export const getSelectedLines = ({ priceCountArray, oneSize, rangeState, viewBoxPosition }: SelectedLinesType) => {
  const { leftRange, rightRange } = rangeState;
  const { minY, width, height } = viewBoxPosition;

  const firstSelectIndex = priceCountArray.findIndex((_, idx) => {
    return leftRange / (100 / priceCountArray.length) <= idx;
  })

  const lastSelectIndex = [...priceCountArray].reverse().findIndex((_, idx) => {
    return rightRange / (100 / priceCountArray.length) < idx + 2;
  })

  const selectedLine = `${minY}, ${height} \n ${priceCountArray.map((count, idx) => {
    const isSelect = (leftRange / (100 / priceCountArray.length)) <= idx && idx < Math.floor(rightRange / (100 / priceCountArray.length));
    const firstSelected = firstSelectIndex === idx ? `${idx * 10}, ${height}` : '';
    const lastSelected = lastSelectIndex === idx ? `${idx * 10}, ${height}` : '';
    return `${firstSelected} ${idx * 10}, ${isSelect ? 100 - (count * oneSize) : 100} ${lastSelected}`;
  }).join('\n')}\n ${width},${height}`;

  return selectedLine;
}
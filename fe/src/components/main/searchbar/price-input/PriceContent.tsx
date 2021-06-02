import { Box } from "@material-ui/core";
import useAxios from "hooks/useAxios";
import styled from "styled-components";
import { useRecoilValue, useSetRecoilState } from "recoil";
import { priceData, searchParamsSelector } from "atoms/searchbarAtom";
import PriceGraph from "./PriceGraph";

const PriceContent = () => {
  const searchParams = useRecoilValue(searchParamsSelector);
  const setPriceData = useSetRecoilState(priceData);
  const { isSuccess, data } = useAxios(
    process.env.REACT_APP_API_URL + "/price?fraction=10" + searchParams,
    "get"
  );
  if (isSuccess)
    setPriceData({ maxPrice: data.max_price, minPrice: data.min_price });
    
  return (
    <Box p="2rem" width="22rem" display="flex" flexDirection="column">
      <PriceTitle>가격 범위</PriceTitle>
      {isSuccess ? (
        <PriceGraph
          prices={data.prices}
          minPrice={data.min_price}
          maxPrice={data.max_price}
        />
      ) : (
        <PriceRange> 여행가실 위치와 날짜를 입력해주세요 </PriceRange>
      )}
    </Box>
  );
};
export default PriceContent;

const PriceTitle = styled.span`
  font-size: 1rem;
  font-weight: 700;
  margin-bottom: 1rem;
`;

const PriceRange = styled.span`
  font-size: 18px;
`;

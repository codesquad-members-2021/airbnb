import { Box } from "@material-ui/core";
import styled from "styled-components";
import PriceSlider from "./PriceSlider";

const PriceContent = () => {
  return (
    <Box p="2rem" width="22rem" display="flex" flexDirection="column">
      <PriceTitle>가격 범위</PriceTitle>
      <PriceRange>100000 ~ 100000000+</PriceRange>
      <PriceSubtitle>평균 1박요금은 입니다.</PriceSubtitle>
      <PriceSlider />
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

const PriceSubtitle = styled.span`
  font-size: 0.8rem;
  font-weight: 400;
  color: ${({ theme }) => theme.color.Gray3};
`;

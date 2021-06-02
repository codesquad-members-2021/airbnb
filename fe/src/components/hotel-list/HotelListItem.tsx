import { Box } from "@material-ui/core";
import styled from "styled-components";

type HotelListItemProps = {
  details: string[];
  img: string;
  price: number;
  rate: number;
  title: string;
  wishlist: boolean;
};

const HotelListItem = ({
  details,
  img,
  price,
  rate,
  title,
  wishlist,
}: HotelListItemProps) => {
  return (
    <StyledHotelListItem>
      <HotelImg src={img} />
      <Box
        display="flex"
        flexDirection="column"
        justifyContent="space-between"
        alignItems="stretch"
      >
        <Box display="flex" flexDirection="column">
          <HotelItemSubTitle>서초구의 아파트 전체</HotelItemSubTitle>
          <HotelItemTitle>{title}</HotelItemTitle>
          <HotelItemSubTitle>{details.join(" ")}</HotelItemSubTitle>
        </Box>
        <Box display="flex" justifyContent="space-between">
          <HotelRating>{rate}</HotelRating>
          <HotelPrice>
            <HotelItemTitle>
              <b>{price}</b>/박
            </HotelItemTitle>
            <HotelItemSubTitle>총액</HotelItemSubTitle>
          </HotelPrice>
        </Box>
      </Box>
    </StyledHotelListItem>
  );
};

export default HotelListItem;

const StyledHotelListItem = styled.div`
  display: flex;
  width: 100%;
  padding: 2rem 0;
  margin-top: 1rem;
  padding-bottom: 3rem;
  border-bottom: ${({ theme }) => theme.border.Gray4};
`;

const HotelImg = styled.img`
  width: 20rem;
  height: 12.5rem;
  margin-right: 1.5rem;
  border-radius: 1rem;
`;

const HotelPrice = styled.div``;
const HotelRating = styled.span``;

const HotelItemTitle = styled.span``;

const HotelItemSubTitle = styled.span``;

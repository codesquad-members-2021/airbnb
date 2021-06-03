import { Box } from "@material-ui/core";
import { FaHeart, FaRegHeart, FaStar } from "react-icons/fa";
import { useRecoilValue } from "recoil";
import { CalendarData } from "atoms/searchbarAtom";
import styled from "styled-components";

type HotelListItemProps = {
  options: string[];
  img: string;
  price: number;
  rate: number;
  title: string;
  wishlist: boolean;
};

const HotelListItem = ({
  options,
  img,
  price,
  rate,
  title,
  wishlist,
}: HotelListItemProps) => {
  const [checkIn, checkOut] = useRecoilValue(CalendarData);
  let dayGap = 0;
  if (checkIn && checkOut) {
    dayGap = new Date(checkOut).getDay() - new Date(checkIn).getDay();
  }
  return (
    <StyledHotelListItem>
      <HotelImg src={img} />
      <Box
        display="flex"
        flexDirection="column"
        justifyContent="space-between"
        alignItems="stretch"
        width="23rem"
      >
        <Box display="flex" flexDirection="column">
          <HotelWishList aria-checked={wishlist}>
            {wishlist ? <FaHeart /> : <FaRegHeart />}
          </HotelWishList>
          <HotelItemSubTitle>서초구의 아파트 전체</HotelItemSubTitle>
          <HotelItemTitle>{title}</HotelItemTitle>
          <HotelItemSubTitle>{options.join(" ")}</HotelItemSubTitle>
        </Box>
        <Box display="flex" justifyContent="space-between">
          <HotelRating>
            <FaStar />
            평점 {rate}점
          </HotelRating>
          <HotelPrice>
            <HotelItemTitle>
              <b>₩ {price}</b> /박
            </HotelItemTitle>
            <TotalPrice>총액 ₩ {dayGap * price}</TotalPrice>
          </HotelPrice>
        </Box>
      </Box>
    </StyledHotelListItem>
  );
};

export default HotelListItem;
const TotalPrice = styled.span`
  font-size: 1.2rem;
  text-decoration: underline;
  line-height: 1.2;
  color: ${({ theme }) => theme.color.Gray3};
`;
const HotelWishList = styled.div`
  position: absolute;
  right: 1rem;
  top: 1.3rem;
  color: ${({ theme }) => theme.color.Gray4};
  &[aria-checked="true"] {
    color: ${({ theme }) => theme.color.Red};
  }
  font-size: 1.3rem;
`;

const StyledHotelListItem = styled.div`
  position: relative;
  display: flex;
  width: 100%;
  padding: 3rem 3.6rem;;

  border-bottom: ${({ theme }) => theme.border.Gray4};
  cursor: pointer;
  &:hover {
    background-color: ${({ theme }) => theme.color.Gray5};
  }
`;

const HotelImg = styled.img`
  width: 20rem;
  height: 12.5rem;
  margin-right: 1.5rem;
  border-radius: 1rem;
`;

const HotelPrice = styled.div`
  display: flex;
  flex-direction: column;
  font-size: 1rem;
`;
const HotelRating = styled.span`
  display: flex;
  align-items: flex-end;
  font-weight: 700;
  font-size: 1rem;
  line-height: 1.4;
  color: ${({ theme }) => theme.color.Gray3};
  svg {
    color: ${({ theme }) => theme.color.Red};
    font-size: 1.3rem;
    margin-right: 0.5rem;
  }
`;

const HotelItemTitle = styled.span`
  font-size: 1.5rem;
  line-height: 20px;
  margin: 1rem 0;
  b {
    font-size: 700;
  }
`;

const HotelItemSubTitle = styled.span`
  font-size: 12px;
  line-height: 17px;
  color: ${({ theme }) => theme.color.Gray3};
`;

import styled from "styled-components";
import HotelListItem from "./HotelListItem";

type HotelListProps = {
  hotelListData: {
    options: string[];
    img: string;
    price: number;
    rate: number;
    title: string;
    wishlist: boolean;
    hotelId: string;
  }[];
};

const HotelListContent = ({ hotelListData }: HotelListProps) => {
  return (
    <StyledHotelListContent>
      <HotelListSubtitle>
        300개 이상의 숙소 512일-5월18일 게스트3명
      </HotelListSubtitle>
      <HotelListTitle>지도에서 선택한 지역의 숙소</HotelListTitle>
      <ul>
        {hotelListData?.map(
          ({ hotelId, options, img, price, rate, title, wishlist }) => (
            <HotelListItem
              key={hotelId}
              {...{ options, img, price, rate, title, wishlist }}
            />
          )
        )}
      </ul>
    </StyledHotelListContent>
  );
};

export default HotelListContent;

const StyledHotelListContent = styled.div`
  display: flex;
  flex-direction: column;
  padding: 0 5rem;
  ul {
    overflow-y: scroll;
  }
`;

const HotelListTitle = styled.span`
  font-weight: 700;
  font-size: 3rem;
  margin-bottom: 3rem;
`;

const HotelListSubtitle = styled.span`
  font-weight: 400;
  font-size: 1rem;
  color: ${({ theme }) => theme.color.Gray4};
`;

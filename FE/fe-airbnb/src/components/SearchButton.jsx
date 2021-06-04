import styled from 'styled-components';
import { Center } from '@chakra-ui/react';
import { useHistory } from 'react-router';
import axios from 'axios';

import { ReactComponent as SearchIcon } from '../icon/search.svg';
import { useContext } from 'react';
import {
  CalendarContext,
  HeadCountContext,
  PriceContext,
} from './searchBar/SearchBar';
import { HotelListContext } from '../App';

const SearchButton = ({ size }) => {
  const { checkInMoment, checkOutMoment } = useContext(CalendarContext);
  const { minPrice, maxPrice } = useContext(PriceContext);
  const { guestCountState } = useContext(HeadCountContext);
  const { adults, children, infants } = guestCountState;

  const checkinDate = checkInMoment?.format('YYYY-MM-DD');
  const checkoutDate = checkOutMoment?.format('YYYY-MM-DD');

  const { setHotelListData } = useContext(HotelListContext);

  const history = useHistory();
  const routeToReservationPage = () => {
    history.push('/reservation');
  };

  const handleClickSearchBtn = async () => {
    const { data } = await axios.get(
      `http://airbnb-team4-mockup.herokuapp.com/accommodations?checkinDate=${checkinDate}&checkoutDate=${checkoutDate}&startPrice=${minPrice}&endPrice=${maxPrice}&numberOfAdults=${adults}&numberOfChildren=${children}&numberOfBabies=${infants}`
    );

    setHotelListData(data);
    routeToReservationPage();
  };

  return (
    <Button size={size} onClick={handleClickSearchBtn}>
      <Center>
        <SearchIcon />
        {size === 'compact' ? <></> : <span>검색</span>}
      </Center>
    </Button>
  );
};

const Button = styled.button`
  background-color: ${({ theme }) => theme.colors.pink};
  color: ${({ theme }) => theme.colors.white};
  font-weight: bold;
  font-size: ${({ theme }) => theme.fontSizes.M};
  border-radius: ${({ theme }) => theme.borders.M};
  width: ${({ size }) => (size === 'compact' ? '40px' : '90px')};
  height: 40px;

  span {
    margin-left: 5px;
  }
`;

export default SearchButton;

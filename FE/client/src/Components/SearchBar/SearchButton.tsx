import { Link } from 'react-router-dom';
import styled from 'styled-components';
import SearchIcon from '@material-ui/icons/Search';
import Button from '@material-ui/core/Button';
import { SearchBarType } from '@Components/commons/baseType';
import { ButtonStyle } from '@Components/commons/base';
import { useRecoilValue } from 'recoil';
import { locationAtom, rangeAtom, personnelAtom, calendarClickAtom } from '@/recoil/atoms';
import { makeQueryString } from '@/utils/serviceUtils';

const SearchButton = ({ focus }: SearchBarType) => {
  const buttonStyle = ButtonStyle();
  const locationState = useRecoilValue(locationAtom);
  const calendarState = useRecoilValue(calendarClickAtom);
  const rangeState = useRecoilValue(rangeAtom);
  const personnelState = useRecoilValue(personnelAtom);

  const [leftMonthDate, rightMonthDate] = calendarState;

  const searchParamsObject = {
    ...locationState.coordinate,
    checkIn: leftMonthDate,
    checkOut: rightMonthDate,
    ...rangeState,
    ...personnelState
  }

  return (
    <SearchButtonWrapper >
      <Link to={{
        pathname: '/searchMap',
        search: `?${makeQueryString(searchParamsObject)}`,
      }}
        style={{ textDecoration: 'none' }}>
        <Button variant="contained" color="secondary"
          className={`${buttonStyle.search} SearchButton`}
          style={{ borderRadius: focus ? '2rem' : '50%' }}>
          <SearchIcon fontSize="large" />
          {focus ? '검색' : ''}
        </Button>
      </Link>
    </SearchButtonWrapper>
  )
}

const SearchButtonWrapper = styled.div`
  width: 15%;
  text-align: end;
`;

export default SearchButton;

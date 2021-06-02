import { useCallback } from 'react';
import { Link } from 'react-router-dom';
import styled from 'styled-components';
import SearchIcon from '@material-ui/icons/Search';
import Button from '@material-ui/core/Button';
import { SearchBarType } from '@Components/commons/baseType';
import { BASE_ZOOM_LEVEL, ButtonStyle, SEOUL_LOCATION } from '@Components/commons/base';
import { useRecoilValue, useSetRecoilState } from 'recoil';
import { locationAtom, rangeAtom, personnelAtom, calendarClickAtom, searchBarFocusAtom } from '@/recoil/atoms';
import { makeQueryString } from '@/utils/serviceUtils';

const SearchButton = ({ focus }: SearchBarType) => {
  const buttonStyle = ButtonStyle();
  const locationState = useRecoilValue(locationAtom);
  const calendarState = useRecoilValue(calendarClickAtom);
  const rangeState = useRecoilValue(rangeAtom);
  const personnelState = useRecoilValue(personnelAtom);
  const setSearchBarState = useSetRecoilState(searchBarFocusAtom);
  const [leftMonthDate, rightMonthDate] = calendarState;

  const searchParamsObject = {
    x: locationState.x || SEOUL_LOCATION.x,
    y: locationState.y || SEOUL_LOCATION.y,
    checkIn: leftMonthDate,
    checkOut: rightMonthDate,
    ...rangeState,
    ...personnelState,
    zoom: BASE_ZOOM_LEVEL
  }

  const handleClickHideSearchBar = useCallback(() => {
    setSearchBarState({
      location: false,
      entryDate: false,
      charge: false,
      personnel: false,
      focus: false
    })
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  return (
    <SearchButtonWrapper >
      <Link to={{
        pathname: '/searchMap',
        search: `?${makeQueryString(searchParamsObject)}`,
      }}
        style={{ textDecoration: 'none' }}>
        <Button variant="contained" color="secondary"
          onClick={handleClickHideSearchBar}
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

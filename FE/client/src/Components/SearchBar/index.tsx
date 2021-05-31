import { useCallback } from 'react';
import { Link } from 'react-router-dom';
import styled from 'styled-components';
import SearchIcon from '@material-ui/icons/Search';
import Button from '@material-ui/core/Button';
import { useRecoilState } from 'recoil';
import EntryDate from './EntryDate';
import Charge from './Charge';
import Personnel from './Personnel';
import { searchBarFocusAtom } from '@/recoil/atoms';
import Location from './Location';

const SearchBar = () => {
  const [searchBarState, setSearchBarState] = useRecoilState(searchBarFocusAtom);
  const { location, entryDate, charge, personnel, focus } = searchBarState;

  const handleClickShowModal = useCallback((clickTarget: string) => () => {
    setSearchBarState({
      location: false,
      entryDate: false,
      charge: false,
      personnel: false,
      focus: true,
      [clickTarget]: true
    });
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  return (
    <SearchBarWrapper className='SearchBar'>
      <Location {...{ location, handleClickShowModal }} />
      <EntryDate {...{ entryDate, handleClickShowModal }} />
      <Charge {...{ charge, handleClickShowModal }} />
      <Personnel {...{ personnel, handleClickShowModal }} />
      <SearchButtonWrapper>
        <Link to="/searchMap" style={{ textDecoration: 'none' }}>
          <Button variant="contained" color="secondary"
            style={{
              borderRadius: focus ? '2rem' : '50%', height: '4rem', marginRight: '1rem',
              fontWeight: 700, fontSize: '18px'
            }}>
            <SearchIcon fontSize="large" />
            {focus ? '검색' : ''}
          </Button>
        </Link>
      </SearchButtonWrapper>
    </SearchBarWrapper>
  )
}

const SearchBarWrapper = styled.div`
  display:flex;
  width: 70%;
  min-width: 35rem;
  height: 6rem;
  margin: 2rem auto ;
  background: #fff;
  border:1px solid #BDBDBD;
  border-radius:3rem;
  align-items:center;
  place-content: space-between;
`;

const SearchButtonWrapper = styled.div`
  width: 15%;
  text-align: end;
`;

export default SearchBar;

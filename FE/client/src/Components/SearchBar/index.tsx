import { useCallback, useEffect } from 'react';
import styled from 'styled-components';
import { useRecoilState } from 'recoil';
import EntryDate from './EntryDate';
import Charge from './Charge';
import Personnel from './Personnel';
import { searchBarFocusAtom } from '@/recoil/atoms';
import Location from './Location';
import SearchButton from './SearchButton';

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
      <SearchButton {...{ focus }} />
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


export default SearchBar;

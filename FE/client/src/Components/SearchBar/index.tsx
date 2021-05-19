import styled from 'styled-components';
import EntryDate from './EntryDate';
import Charge from './Charge';
import Personnel from './Personnel';
import SearchIcon from '@material-ui/icons/Search';
import Button from '@material-ui/core/Button';
import { useRecoilState } from 'recoil';
import { searchBarFocusAtom } from '../../recoil/atoms';

const SearchBar = () => {
  const [searchBarState, setSearchBarState] = useRecoilState(searchBarFocusAtom);
  const { entryDate, charge, personnel, focus } = searchBarState;

  const handleClickShowModal = (clickTarget: string) => () => {
    setSearchBarState({
      entryDate: false,
      charge: false,
      personnel: false,
      focus: true,
      [clickTarget]: true
    });
  }

  return (
    <SearchBarWrapper className='SearchBar'>
      <EntryDate {...{ entryDate, handleClickShowModal }} />
      <Charge {...{ charge, handleClickShowModal }} />
      <Personnel {...{ personnel, handleClickShowModal }} />
      <SearchButtonWrapper>
        <Button variant="contained" color="secondary"
          style={{
            borderRadius: focus ? '2rem' : '50%', height: '4rem', marginRight: '1rem',
            fontWeight: 700, fontSize: '18px'
          }}>
          <SearchIcon fontSize="large" />
          {focus ? '검색' : ''}
        </Button>
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

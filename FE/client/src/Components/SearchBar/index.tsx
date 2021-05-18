import styled from 'styled-components';
import EntryDate from './EntryDate';
import Charge from './Charge';
import Personnel from './Personnel';
import SearchIcon from '@material-ui/icons/Search';
import Button from '@material-ui/core/Button';

const SearchBar = () => {
  return (
    <SearchBarWrapper>
      <EntryDate></EntryDate>

      <Charge></Charge>
      <Personnel></Personnel>
      <Button variant="contained" color="secondary" style={{ borderRadius: '50%' , height:'4rem', marginRight:'1rem'}}> 
        <SearchIcon fontSize="large"/>
      </Button>
    </SearchBarWrapper>
  )
}

const SearchBarWrapper = styled.div`
  display:flex;
  width: 70%;
  height: 6rem;
  margin: 2rem auto ;
  background: #fff;
  border:1px solid #BDBDBD;
  border-radius:3rem;
  align-items:center;
  place-content: space-between;
`;


export default SearchBar;

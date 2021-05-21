import styled from 'styled-components';
import Button from '@material-ui/core/Button';
import SearchIcon from '@material-ui/icons/Search';

const SearchMapNav = () => {
  return (
    <SearchMapNavWrapper>
      <SearchMapItem>일정 입력</SearchMapItem>
      <SearchMapItem>금액대 입력</SearchMapItem>
      <SearchMapItem>인원 입력</SearchMapItem>
      <Button variant="contained" color="secondary" style={{
        borderRadius: '50%', padding: '.5rem', width: '2.5rem', height: '2.5rem', minWidth: '1.5rem'
      }}>
        <SearchIcon />
      </Button>
    </SearchMapNavWrapper>
  );
};

const SearchMapNavWrapper = styled.div`
   display:flex;
   border: 1px solid #BDBDBD;
   padding: .7rem .7rem .7rem 1rem;
   border-radius:3rem;
   place-items: center;
`;

const SearchMapItem = styled.div`
  padding: 0 1rem;
  font-weight: 700;
  font-size: 12px;
  & + & {
    border-left: 1px solid #BDBDBD;
  }
`;

export default SearchMapNav;

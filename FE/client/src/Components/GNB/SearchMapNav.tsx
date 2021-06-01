import styled from 'styled-components';
import Button from '@material-ui/core/Button';
import SearchIcon from '@material-ui/icons/Search';
import { useRecoilValue } from 'recoil';
import { userInfoSelector } from '@/recoil/atoms';
import { ButtonStyle } from '@Components/commons/base';
import Nav from './Nav';

type SearchMapNavType = {
  showSearchBarState: boolean;
  handleClickToggleSearchBar: () => void;
}

const SearchMapNav = ({ showSearchBarState, handleClickToggleSearchBar }: SearchMapNavType) => {
  const buttonStyle = ButtonStyle();
  const userInfo = useRecoilValue(userInfoSelector);
  const { checkDate, range, guest } = userInfo;

  return (
    <>
      {showSearchBarState ?
        <Nav /> :
        <SearchMapNavWrapper onClick={handleClickToggleSearchBar}>
          <SearchMapItem>{checkDate}</SearchMapItem>
          <SearchMapItem>{range}</SearchMapItem>
          <SearchMapItem>{guest}</SearchMapItem>

          <Button variant="contained" color="secondary"
            className={buttonStyle.searchMapButton}>
            <SearchIcon />
          </Button>
        </SearchMapNavWrapper>}
    </>
  );
};

const SearchMapNavWrapper = styled.div`
   display:flex;
   border: 1px solid #BDBDBD;
   padding: .7rem .7rem .7rem 1rem;
   border-radius:3rem;
   place-items: center;
   &:hover{
     cursor:pointer;
   }
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

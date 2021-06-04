import styled from 'styled-components';
import GNB from '@Components/GNB';
import HotelList from '@Components/HotelList/index';
import SearchMap from '@Components/SearchMap/index';
import qs from 'qs';
import { useLocation } from "react-router-dom";
import { useEffect } from 'react';
import { useSetRecoilState } from 'recoil';
import { userInfoAtom } from '@/recoil/atoms';

const SearchMapPage = () => {
  const location = useLocation();
  const query = qs.parse(location.search, {
    ignoreQueryPrefix: true
  });
  const setUserInfo = useSetRecoilState(userInfoAtom);

  useEffect(() => {
    setUserInfo(query);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [query]);

  return (
    <>
      <GNB isMain={false} />
      <SearchMapPageWrapper>
        <HotelList />
        <SearchMap />
      </SearchMapPageWrapper>
    </>
  )
}

const SearchMapPageWrapper = styled.div`
  display: flex;
`;
export default SearchMapPage;

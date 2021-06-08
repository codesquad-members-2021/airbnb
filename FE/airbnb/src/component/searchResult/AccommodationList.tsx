import React, { useEffect } from "react";
import { useRecoilState, useRecoilValue } from "recoil";
import { searchResultState } from "state/atoms/searchResultAtoms";
import { searchQuery } from "state/selectors/searchQuery";
import { searchDetail } from "state/selectors/searchDetail";
import styled from "styled-components";
import { baseURL } from "variable";

import AccommodationCard from "component/searchResult/AccommodationCard";

function AccommodationList() {
  const query = useRecoilValue(searchQuery);
  const detail = useRecoilValue(searchDetail);
  const [searchResult, setSearchResult] = useRecoilState(searchResultState);

  useEffect(() => {
    const URL = `${baseURL}/accommodations${query}`;
    const fetchSearchData = async () => {
      try {
        const response = await fetch(URL);
        const json = await response.json();
        setSearchResult(json);
      } catch (error) {
        console.log("fetchSearchData Error", error);
      }
    };
    fetchSearchData();
  }, []);

  return (
    <AccommodationBox>
      <span className="search_detail">{detail}</span>
      <h1 className="search_title">지도에서 선택한 지역의 숙소</h1>
      {searchResult && searchResult.map((res) => <AccommodationCard key={res.name} accommodationInfo={res} />)}
    </AccommodationBox>
  );
}

export default React.memo(AccommodationList);

const AccommodationBox = styled.div`
  box-sizing: border-box;
  width: 50%;
  padding: 30px 24px;
  .search_detail {
    font-size: ${({ theme }) => theme.fontSize.s};
    color: ${({ theme }) => theme.color.gray1};
  }
  .search_title {
    font-size: ${({ theme }) => theme.fontSize.xl};
    font-weight: bold;
    color: ${({ theme }) => theme.color.gray1};
    margin: 20px 0;
  }
`;

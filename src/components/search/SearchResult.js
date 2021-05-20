import React from "react";
import styled from "styled-components";
import { DUMMY } from "../../utils/dummy";

const SearchResult = () => {
  const { SEARCH_LIST } = DUMMY;
  const { stayCount, stays } = SEARCH_LIST;
  console.log(stays);
  return (
    <SearchResultWrapper>
      {renderOption(stayCount)}
      <h2>지도에서 선택한 지역의 숙소</h2>
      <ResultList>{stays.map(renderResultItem)}</ResultList>
    </SearchResultWrapper>
  );
};
const renderOption = (stayCount) => {
  return (
    <Option>
      <OptionItem>{stayCount}개 이상의 숙소</OptionItem>
      <OptionItem>5월12일 - 5월 18일</OptionItem>
      <OptionItem>100,000 - 1,000,000</OptionItem>
      <OptionItem>게스트 3명</OptionItem>
    </Option>
  );
};
const renderResultItem = (stays) => {
  const {
    imgURL,
    location,
    category,
    title,
    option,
    amenities,
    pricePerNight,
    rating,
    reviewCount,
  } = stays;
  console.log(option);
  return (
    <ItemContainer>
      <ItemImage URL={imgURL} />
      <ItemContent>
        <ContentTop>
          <ItemLocation>
            {location}의{category} 전체
          </ItemLocation>
          <h3>{title}</h3>
          {renderItemOption(option)}
          <ItemOption>
            {amenities.map((el) => (
              <li>{el}</li>
            ))}
          </ItemOption>
        </ContentTop>
        <ContentBottom>
          <ItemRateContainer>
            <span>{rating}</span>
            <span>(후기 {reviewCount}개)</span>
          </ItemRateContainer>
          <ItemPriceContainer>
            <div>{pricePerNight} / 박</div>
            <div>총액 {pricePerNight * 10}</div>
          </ItemPriceContainer>
        </ContentBottom>
      </ItemContent>
    </ItemContainer>
  );
};
const renderItemOption = (option) => {
  const { maxGuestCount, roomType, bedCount, bathroomCount } = option;
  return (
    <ItemOption>
      <li>최대인원 {maxGuestCount}명</li>
      <li>{roomType}</li>
      <li>침대 {bedCount}개</li>
      <li>욕실 {bathroomCount}개</li>
    </ItemOption>
  );
};
const SearchResultWrapper = styled.div`
  padding: 2rem;
  overflow: scroll;
  & > h2 {
    font-size: 2rem;
    font-weight: bold;
    margin-bottom: 2rem;
  }
`;
const Option = styled.ul`
  display: flex;
  margin: 1rem 0;
`;
const OptionItem = styled.li`
  & + & {
    margin-left: 2rem;
  }
`;
const ResultList = styled.ul``;
const ItemContainer = styled.li`
  display: flex;
  height: 200px;
  margin-top: 3rem;
`;
const ItemImage = styled.div`
  background: url(${({ URL }) => URL});
  background-size: cover;
  width: 45%;
  border-radius: 1rem;
`;
const ItemContent = styled.div`
  flex: 1;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  padding: 1rem;
  margin-left: 1rem;
  font-size: 0.8rem;
  & h3 {
    font-size: 1rem;
    font-weight: bold;
    margin: 1rem 0;
  }
`;
const ContentTop = styled.div``;
const ContentBottom = styled.div`
  display: flex;
  align-items: flex-end;
`;

const ItemLocation = styled.div``;
const ItemOption = styled.ul`
  color: #828282;
  display: flex;
  margin: 0.5rem 0;
  & li + li {
    margin-left: 1rem;
  }
`;

const ItemRateContainer = styled.div`
  flex: 1;
  & > *:first-child {
    font-weight: bold;
  }
  & > *:last-child {
  }
`;

const ItemPriceContainer = styled.div`
  font-size: 1rem;
  text-align: right;
  & > *:first-child {
    font-weight: bold;
    margin-bottom: 0.5rem;
  }
  & > *:last-child {
  }
`;

export default SearchResult;

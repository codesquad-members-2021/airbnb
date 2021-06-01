import { createContext, ReactElement, useState } from 'react';
import styled from 'styled-components';
import moment, { Moment } from 'moment';
import { Center, Flex } from '@chakra-ui/layout';

import CalendarModal from '@components/calendar/CalendarModal';
import HeadCountModal from '@components/headcount/HeadCountModal';
import PriceModal from '@components/price/PriceModal';
import SearchButton from '../SearchButton';
import SearchBarBtn from './SearchBarBtn';
import { CalendarContextType, HeadCountContextType, SearchBarBtnType, SelectedContentProps } from './searchBarTypes';

export const CalendarContext = createContext<CalendarContextType | null >(null);
export const HeadCountContext = createContext<HeadCountContextType>({guestCountState: null, setGuestCountState: null});

function SearchBar() {
  const [selectedBtn, setSelectedBtn] = useState<string | null>(null);

  // ============================ calendar 상태 ============================

  const initialCalendars = [
    moment().add(-1, 'M'),
    moment(),
    moment().add(1, 'M'),
    moment().add(2, 'M'),
  ];

  const [calendars, setCalendars] = useState(initialCalendars);
  const [checkInMoment, setCheckInMoment] = useState<Moment | null>(null);
  const [checkOutMoment, setCheckOutMoment] = useState<Moment | null>(null);

  const calendarState = {
    values: {
      calendars,
      setCalendars,
      checkInMoment,
      setCheckInMoment,
      checkOutMoment,
      setCheckOutMoment
    },
  };

  // ============================ headcount 상태 ============================

  const [guestCountState, setGuestCountState] = useState({ adults: 0, children: 0, infants: 0 });
  const { adults, children, infants } = guestCountState;
  const headCountState = {
    values: {
      guestCountState,
      setGuestCountState
    }
  }

  const renderModal = (): ReactElement | void => {
    switch (selectedBtn) {
      case SearchBarBtnType.CHECK_IN_OUT:
        return (
          <CalendarContext.Provider value={calendarState.values}>
            <CalendarModal />
          </CalendarContext.Provider>
        );

      case SearchBarBtnType.PRICE:
        return (
          <PriceModal />
        );

      case SearchBarBtnType.HEAD_COUNT:
        return (
          <HeadCountContext.Provider value={headCountState.values}>
            <HeadCountModal />
          </HeadCountContext.Provider>
        );
    }
  }

  const handleClickSearchBarBtn = (btnType: string): void => {
    if(selectedBtn === btnType) setSelectedBtn(null);
    else setSelectedBtn(btnType);
  }

  return (
    <Center>
      <SearchBarContainer>
        <Flex>
          <SearchBarBtn onClick={() => handleClickSearchBarBtn(SearchBarBtnType.CHECK_IN_OUT)}>
            <CheckInOut>
              <Flex direction="column">
                <SearchBarSubTitle>체크인</SearchBarSubTitle>
                {
                  checkInMoment 
                    ? <SelectedContent contentType="date">{checkInMoment.format('YYYY-MM-DD')}</SelectedContent> 
                    : <SelectedContent contentType="placeholder">날짜 입력</SelectedContent>
                }
              </Flex>
              <CustomSpacer />
              <Flex direction="column">
                <SearchBarSubTitle>체크아웃</SearchBarSubTitle>
                {
                  checkOutMoment 
                    ? <SelectedContent contentType="date">{checkOutMoment.format('YYYY-MM-DD')}</SelectedContent> 
                    : <SelectedContent contentType="placeholder">날짜 입력</SelectedContent>
                }
              </Flex>
            </CheckInOut>
          </SearchBarBtn>

          <SearchBarBtn onClick={() => handleClickSearchBarBtn(SearchBarBtnType.PRICE)}>
            <Flex direction="column">
                <SearchBarSubTitle>요금</SearchBarSubTitle>
                <SelectedContent contentType="placeholder">금액대 설정</SelectedContent>
            </Flex>
          </SearchBarBtn>

          <SearchBarBtn onClick={() => handleClickSearchBarBtn(SearchBarBtnType.HEAD_COUNT)}>
            <Flex direction="column">
              <SearchBarSubTitle>인원</SearchBarSubTitle>
              {
                guestCountState.adults || guestCountState.children || guestCountState.infants
                  ? <SelectedContent contentType="guests">게스트 {adults + children}명, 유아 {infants}명</SelectedContent>
                  : <SelectedContent contentType="placeholder">게스트 추가</SelectedContent>
              }
            </Flex>
          </SearchBarBtn>

          <SearchButtonContainer>
            <SearchButton size="compact" />
          </SearchButtonContainer>
        </Flex>

        {selectedBtn && renderModal()}
      </SearchBarContainer>
    </Center>
  );
};

const SearchBarContainer = styled.div`
  width: 916px;
  height: 76px;
  background-color: ${({ theme }) => theme.colors.white};
  border: 1px solid ${({ theme }) => theme.colors.gray4};
  border-radius: ${({ theme }) => theme.borders.XL};
  position: relative;
`;

const SearchBarSubTitle = styled.div`
  font-size: ${({theme}) => theme.fontSizes.XS};
  font-weight: bold;
  width: 112px;
  height: 17px;
  margin-bottom: 4px;
`

const CheckInOut = styled.div`
  display: flex;
`

const CustomSpacer = styled.div`
  width: 24px;
`

const SelectedContent = styled.div<SelectedContentProps>`
  font-size: ${({theme}) => theme.fontSizes.SM};
  color: ${({contentType, theme}) => contentType === 'placeholder' ? theme.colors.gray2 : theme.colors.black};
  width: 112px;
  height: 23px;
`

const SearchButtonContainer = styled.div`
  position: absolute;
  top: 18px;
  right: 18px;
`

export default SearchBar;

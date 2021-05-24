import React, { createContext, useContext, useReducer, useRef, useState } from 'react';
import styled from 'styled-components';
import SearchIcon from '@material-ui/icons/Search';
import { mockupLocationData } from '../../../../data/location';
import { LocationList, Location, SearcherContext } from '../../../../shared/interface';
import { useReservationState, useReservationDispatch } from '../../../../hooks/ReservationHook';
import LocationTab from './searcherComponents/LocationTab';
import CheckInTab from './searcherComponents/CheckInTab';
import { SearcherStateContext, SearcherDispatchContext } from '../../../../Contexts';
import { searchReducer } from '../../../../shared/searchBarReducer';
import Calendar from './searcherComponents/calendar/Calendar';
import CheckOutTab from './searcherComponents/CheckOutTab';
import FeeTab from './searcherComponents/FeeTab';

const isNotLocationSelected = (location: Location): boolean => {
    return location.id === 0 && location.city === '';
};

const initialSearcherState: SearcherContext = {
    locationList: [],
    inputOfLocation: '',
    locationLayer: false,
    checkInCalendarLayer: false,
    checkOutCalendarLayer: false,
    feeLayer: false,
    peopleLayer: false,
};

const Searcher = (): React.ReactElement => {
    const reservationState = useReservationState();
    const reservationDispatch = useReservationDispatch();
    const { location, checkIn, checkOut, fee, people } = reservationState;

    const [searcherState, searcherDispatch] = useReducer(searchReducer, initialSearcherState);

    return (
        <Search>
            <SearcherStateContext.Provider value={searcherState}>
                <SearcherDispatchContext.Provider value={searcherDispatch}>
                    <BarSection>
                        <LocationTab />
                        <CheckInTab />
                        <CheckOutTab />
                        <FeeTab />
                        <PeopleTab>
                            <NavigatingText>인원</NavigatingText>
                            <SearchButton>
                                <SearchIcon />
                            </SearchButton>
                        </PeopleTab>
                    </BarSection>
                </SearcherDispatchContext.Provider>
            </SearcherStateContext.Provider>
        </Search>
    );
};

export default Searcher;

const Search = styled.div`
    display: flex;
    justify-content: center;
`;

const BarSection = styled.section`
    display: flex;
    width: 916px;
    height: 76px;
    background: #fff;
    position: relative;
`;

const NavigatingText = styled.p`
    margin: 0;
`;

const PeopleTab = styled.div`
    flex: 2;
    display: flex;
`;

const SearchButton = styled.button`
    width: 40px;
    height: 40px;
`;

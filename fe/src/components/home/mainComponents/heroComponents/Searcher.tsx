import React, { createContext, useContext, useReducer, useRef, useState } from 'react';
import styled from 'styled-components';
import SearchIcon from '@material-ui/icons/Search';
import { mockupLocationData } from '../../../../data/location';
import { LocationList, Location, SearcherContext } from '../../../../shared/interface';
import { useReservationState, useReservationDispatch } from '../../../../hooks/ReservationHook';
import LocationTab from './searcherComponents/LocationTab';
import { SearcherStateContext, SearcherDispatchContext } from '../../../../Contexts';
import { searchReducer } from '../../../../shared/searchBarReducer';
import Calendar from './searcherComponents/Calendar';

const isNotLocationSelected = (location: Location): boolean => {
    return location.id === 0 && location.city === '';
};

const initialSearcherState = {
    locationList: [],
    inputOfLocation: '',
    locationLayer: false,
    calendarLayer: false,
} as SearcherContext;

const Searcher = (): React.ReactElement => {
    const reservationState = useReservationState();
    const reservationDispatch = useReservationDispatch();
    const { location, checkIn, checkOut, fee, people } = reservationState;

    const [searcherState, searcherDispatch] = useReducer(searchReducer, initialSearcherState);
    const { calendarLayer } = searcherState;
    const handleCalendarLayer: React.MouseEventHandler<HTMLDivElement> = () => {
        searcherDispatch({ type: 'LOCATION_LAYER', state: false });
        searcherDispatch({ type: 'CALENDAR_LAYER', state: true });
    };

    return (
        <Search>
            <SearcherStateContext.Provider value={searcherState}>
                <SearcherDispatchContext.Provider value={searcherDispatch}>
                    <BarSection>
                        <LocationTab />
                        <CheckInTab onClick={handleCalendarLayer}>
                            <NavigatingText>체크인</NavigatingText>
                        </CheckInTab>
                        <CheckOutTab>
                            <NavigatingText>체크아웃</NavigatingText>
                        </CheckOutTab>
                        <PriceTab>
                            <NavigatingText>금액</NavigatingText>
                        </PriceTab>
                        <PeopleTab>
                            <NavigatingText>인원</NavigatingText>
                            <SearchButton>
                                <SearchIcon />
                            </SearchButton>
                        </PeopleTab>
                    </BarSection>
                </SearcherDispatchContext.Provider>
            </SearcherStateContext.Provider>
            {/* <LayerSection>
                {locationLayer && (
                    <LocationLayer>
                        {locationList?.map((place: Location) => (
                            <li onClick={() => setUpLocation(place)}>{place.city}</li>
                        ))}
                    </LocationLayer>
                )}  */}
            {calendarLayer && <Calendar />}
            {/* </LayerSection>  */}
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

const LocationInput = styled.input`
    margin: 0;
`;

const CheckInTab = styled.div`
    flex: 1;
`;

const CheckOutTab = styled.div`
    flex: 1;
`;

const PriceTab = styled.div`
    flex: 1;
`;

const PeopleTab = styled.div`
    flex: 2;
    display: flex;
`;

const SearchButton = styled.button`
    width: 40px;
    height: 40px;
`;

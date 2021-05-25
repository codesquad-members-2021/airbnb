import React, { useReducer } from 'react';
import styled from 'styled-components';
import { SearcherContext } from '../../../../shared/interface';
import { SearcherStateContext, SearcherDispatchContext } from '../../../../Contexts';
import { searchReducer } from '../../../../shared/searchBarReducer';
import LocationTab from './searcherComponents/LocationTab';
import CheckInTab from './searcherComponents/CheckInTab';
import CheckOutTab from './searcherComponents/CheckOutTab';
import FeeTab from './searcherComponents/FeeTab';
import PeopleTab from './searcherComponents/PeopleTab';

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
                        <PeopleTab />
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

import React from 'react';
import styled from 'styled-components';
import SearchIcon from '@material-ui/icons/Search';
import { Container, Layer, NavigatingText, Tab } from './shared.style';
import { Link } from 'react-router-dom';
import { useSearcherDispatch, useSearcherState } from '../../../../../hooks/SearcherHook';

const PeopleTab = (): React.ReactElement => {
    const searcherState = useSearcherState();
    const searcherDispatch = useSearcherDispatch();

    const { peopleLayer } = searcherState;

    const handlePeopleLayer: React.MouseEventHandler<HTMLDivElement> = () => {
        searcherDispatch({ type: 'LOCATION_LAYER', state: false });
        searcherDispatch({ type: 'CHECKOUT_CALENDAR_LAYER', state: false });
        searcherDispatch({ type: 'FEE_LAYER', state: false });
        searcherDispatch({ type: 'CHECKIN_CALENDAR_LAYER', state: false });
        searcherDispatch({ type: 'PEOPLE_LAYER', state: true });
    };
    return (
        <Container>
            <Tab onClick={handlePeopleLayer}>
                <PeopleTabBox>
                    <NavigatingText>인원</NavigatingText>
                    <Link to="/accomodation">
                        <SearchButton>
                            <SearchIcon />
                        </SearchButton>
                    </Link>
                </PeopleTabBox>
            </Tab>
            {peopleLayer && <Layer width={390} top={70} left={480}></Layer>}
        </Container>
    );
};

export default PeopleTab;

const SearchButton = styled.button`
    width: 40px;
    height: 40px;
`;

const PeopleTabBox = styled.div`
    display: flex;
    justify-content: space-between;
`;

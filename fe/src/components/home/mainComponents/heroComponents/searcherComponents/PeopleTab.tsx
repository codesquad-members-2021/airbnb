import React, { useState } from 'react';
import styled from 'styled-components';
import SearchIcon from '@material-ui/icons/Search';
import { Container, Layer, NavigatingText, Tab } from './shared.style';
import { Link } from 'react-router-dom';
import { useSearcherDispatch, useSearcherState } from '../../../../../hooks/SearcherHook';
import { PeopleCount } from '../../../../../shared/interface';
import { useReservationDispatch, useReservationState } from '../../../../../hooks/ReservationHook';

const peopleType = {
    adult: '성인',
    children: '어린이',
    kids: '유아',
};

const PeopleTab = (): React.ReactElement => {
    const reservationDispatch = useReservationDispatch();

    const { peopleLayer } = useSearcherState();
    const searcherDispatch = useSearcherDispatch();

    const [peopleCount, setPeopleCount] = useState<PeopleCount>({
        adult: 0,
        children: 0,
        kids: 0,
    });

    // const { peopleLayer } = searcherState;

    const handlePeopleLayer: React.MouseEventHandler<HTMLDivElement> = () => {
        // searcherDispatch({ type: 'SHOW_LOCATION_LAYER', state: false });
        // searcherDispatch({ type: 'SHOW_CHECKOUT_CALENDAR_LAYER', state: false });
        // searcherDispatch({ type: 'SHOW_FEE_LAYER', state: false });
        // searcherDispatch({ type: 'SHOW_CHECKIN_CALENDAR_LAYER', state: false });
        searcherDispatch({ type: 'SHOW_PEOPLE_LAYER', state: true });
    };

    const handleCount = (key: keyof PeopleCount, payload: number) => {
        let newCount = 0;
        if (payload >= 0) newCount = peopleCount[key] + payload;
        else newCount = peopleCount[key] + payload >= 0 ? peopleCount[key] + payload : 0;

        if (key === 'adult') {
            setPeopleCount({ ...peopleCount, [key]: newCount });
            return;
        }

        const currAdult = peopleCount.adult;
        if (currAdult <= 0 && newCount > 0) setPeopleCount({ ...peopleCount, adult: 1, [key]: newCount });
        else setPeopleCount({ ...peopleCount, [key]: newCount });
    };

    const handleSubmitPeopleCount = () => {
        const { adult, children, kids } = peopleCount;
        const guest = adult + children;
        reservationDispatch({ type: 'PEOPLE', guest, kids });
        searcherDispatch({ type: 'SHOW_PEOPLE_LAYER', state: false });
    };

    const renderPeopleCountList = () => {
        const keys: Array<keyof PeopleCount> = ['adult', 'children', 'kids'];
        return (
            <ul>
                {keys.map((key) => (
                    <li>
                        <h4>{peopleType[key]}</h4>
                        <p>{peopleCount[key]}</p>
                        <button onClick={() => handleCount(key, 1)}>+</button>
                        <button onClick={() => handleCount(key, -1)}>-</button>
                    </li>
                ))}
                <button onClick={handleSubmitPeopleCount}>확인</button>
            </ul>
        );
    };

    return (
        <Container>
            <Tab onClick={handlePeopleLayer}>
                <PeopleTabBox>
                    <NavigatingText>인원</NavigatingText>
                    <PeopleText>
                        게스트: {peopleCount.adult + peopleCount.children}, 유아: {peopleCount.kids}
                    </PeopleText>
                    <Link to="/accomodation">
                        <SearchButton>
                            <SearchIcon />
                        </SearchButton>
                    </Link>
                </PeopleTabBox>
            </Tab>
            {peopleLayer && (
                <Layer width={400} top={100} left={480} height={355}>
                    {renderPeopleCountList()}
                </Layer>
            )}
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

const PeopleText = styled.div``;

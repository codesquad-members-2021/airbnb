import React, { useState } from 'react';
import styled from 'styled-components';
import SearchIcon from '@material-ui/icons/Search';
import { Container, NavigatingText, Tab } from './common/shared.style';
import { Link } from 'react-router-dom';
import { useSearcherDispatch, useSearcherState } from '../../../hooks/SearcherHook';
import { PeopleCount } from '../../../shared/interface';
import { useReservationDispatch, useReservationState } from '../../../hooks/ReservationHook';
import ModalLayer from './common/ModalLayer';

const peopleType = {
    adult: '성인',
    children: '어린이',
    kids: '유아',
};

const PeopleTab = (): React.ReactElement => {
    const reservationState = useReservationState();
    const reservationDispatch = useReservationDispatch();
    const { adult, children, kids } = reservationState.people;
    const { peopleLayer } = useSearcherState();
    const searcherDispatch = useSearcherDispatch();

    const [peopleCount, setPeopleCount] = useState<PeopleCount>({
        adult,
        children,
        kids,
    });

    const handlePeopleLayer: React.MouseEventHandler<HTMLDivElement> = () => {
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
        reservationDispatch({ type: 'PEOPLE', adult, children, kids });
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

    const handleSearchWithAllReservationInfo = (e: React.MouseEvent<HTMLElement>) => {
        e.stopPropagation();
        localStorage.clear();
        localStorage.setItem('reservationState', JSON.stringify(reservationState));
    };

    return (
        <Container>
            <Tab onClick={handlePeopleLayer}>
                <PeopleTabBox>
                    <PeopleText>
                        <NavigatingText>인원</NavigatingText>
                        <p>
                            게스트: {peopleCount.adult + peopleCount.children}, 유아: {peopleCount.kids}
                        </p>
                    </PeopleText>
                    <Link to="/accomodation">
                        <SearchButton onClick={handleSearchWithAllReservationInfo}>
                            <SearchIcon />
                        </SearchButton>
                    </Link>
                </PeopleTabBox>
            </Tab>
            {peopleLayer && (
                <ModalLayer options={{ width: 400, top: 100, left: 515, height: 355 }}>
                    {renderPeopleCountList()}
                </ModalLayer>
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

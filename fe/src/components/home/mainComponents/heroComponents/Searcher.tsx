import React, { useContext, useRef, useState } from 'react';
import styled from 'styled-components';
import SearchIcon from '@material-ui/icons/Search';
import { mockupLocationData } from '../../../../data/location';
import { LocationList, Location } from '../../../../shared/interface';
import { useReservationState, useReservationDispatch } from '../../../../hooks/ReservationHook';

const isNotLocationSelected = (location: Location): boolean => {
    return location.id === 0 && location.city === '';
};

const Searcher = (): React.ReactElement => {
    const reservationState = useReservationState();
    const dispatch = useReservationDispatch();
    const { location, checkIn, checkOut, fee, people } = reservationState;

    const inputOfLocation = useRef<HTMLInputElement>(null);

    const [locationList, setLocationList] = useState<LocationList>([]);
    const [locationLayer, setLocationLayer] = useState<boolean>(false);
    const [calendarLayer, setCalendarLayer] = useState<boolean>(false);

    const handleInputLocation = (event: React.ChangeEvent<HTMLInputElement>) => {
        setTimeout(() => {
            if (!event.target.value) {
                setLocationList([]);
                return;
            }
            const currLocationList: LocationList = mockupLocationData.location.filter((el) =>
                el.city.includes(event.target.value),
            );
            setLocationList(currLocationList);
            setLocationLayer(true);
        }, 200);
    };

    const handleInputLayer: React.MouseEventHandler<HTMLDivElement> = () => {
        if (inputOfLocation?.current) {
            inputOfLocation.current.disabled = false;
            inputOfLocation.current.focus();
        }
    };

    const handleCalendarLayer: React.MouseEventHandler<HTMLDivElement> = () => {
        if (isNotLocationSelected(location) && inputOfLocation?.current) inputOfLocation.current.value = '';
        setLocationLayer(false);
        setCalendarLayer(true);
    };

    const setUpLocation = (place: Location) => {
        // setLocation(place);
        dispatch({ type: 'LOCATION', id: place.id, city: place.city });
        if (inputOfLocation?.current) {
            inputOfLocation.current.value = place.city;
            inputOfLocation.current.blur();
        }
        setLocationLayer(false);
    };

    return (
        <Search>
            <BarSection>
                <LocationTab onClick={handleInputLayer}>
                    <NavigatingText>위치</NavigatingText>
                    <LocationInput
                        ref={inputOfLocation}
                        onFocus={() => setLocationLayer(true)}
                        onChange={handleInputLocation}
                        disabled
                    />
                </LocationTab>
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
            <LayerSection>
                {locationLayer && (
                    <LocationLayer>
                        {locationList.map((place: Location) => (
                            <li onClick={() => setUpLocation(place)}>{place.city}</li>
                        ))}
                    </LocationLayer>
                )}
                {calendarLayer && <div>calendar</div>}
            </LayerSection>
        </Search>
    );
};

export default Searcher;

const Search = styled.div`
    display: flex;
    flex-direction: column;
`;

const BarSection = styled.section`
    display: flex;
    width: 916px;
    height: 76px;
    background: #fff;

    & div {
        width: 100%;
    }
`;

const LayerSection = styled.section``;

const LocationLayer = styled.ul`
    border: 1px solid red;
    width: 493px;
    height: 364px;
`;

const NavigatingText = styled.p`
    margin: 0;
`;

const LocationInput = styled.input`
    margin: 0;
`;

const LocationTab = styled.div`
    flex: 2;
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

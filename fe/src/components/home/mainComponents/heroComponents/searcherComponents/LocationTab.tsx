import React, { useRef } from 'react';
import styled from 'styled-components';
import { useSearcherDispatch, useSearcherState } from '../../../../../hooks/SearcherHook';
import { LocationList, Location } from '../../../../../shared/interface';
import { mockupLocationData } from '../../../../../data/location';
import { useReservationDispatch } from '../../../../../hooks/ReservationHook';

const LocationTab = (): React.ReactElement => {
    const searcherDispatch = useSearcherDispatch();
    const reservationDispatch = useReservationDispatch();
    const searcherState = useSearcherState();
    const inputRef = useRef<HTMLInputElement>(null);
    const { locationLayer, locationList } = searcherState;

    const handleInputLayer: React.MouseEventHandler<HTMLDivElement> = () => {
        if (inputRef?.current) {
            inputRef.current.disabled = false;
            inputRef.current.focus();
        }
    };

    const handleInputLocationList = (event: React.ChangeEvent<HTMLInputElement>) => {
        setTimeout(() => {
            if (!event.target.value) {
                searcherDispatch({ type: 'LOCATION_LIST', list: [] });
                return;
            }
            const currLocationList: LocationList = mockupLocationData.location.filter((el) =>
                el.city.includes(event.target.value),
            );
            searcherDispatch({ type: 'LOCATION_LIST', list: currLocationList });
            searcherDispatch({ type: 'LOCATION_LAYER', state: true });
        }, 200);
    };

    const setUpLocation = (place: Location) => {
        reservationDispatch({ type: 'LOCATION', id: place.id, city: place.city });
        searcherDispatch({ type: 'INPUTOFLOCATION', value: place.city });
        if (inputRef?.current) {
            inputRef.current.value = place.city;
            inputRef.current.blur();
        }
        searcherDispatch({ type: 'LOCATION_LAYER', state: false });
    };

    return (
        <Container>
            <Tab onClick={handleInputLayer}>
                <NavigatingText>위치</NavigatingText>
                <LocationInput
                    ref={inputRef}
                    onFocus={() => searcherDispatch({ type: 'LOCATION_LAYER', state: true })}
                    onChange={handleInputLocationList}
                    disabled
                />
            </Tab>
            <LayerSection>
                {locationLayer && (
                    <LocationLayer>
                        {locationList?.map((place: Location) => (
                            <li onClick={() => setUpLocation(place)}>{place.city}</li>
                        ))}
                    </LocationLayer>
                )}
            </LayerSection>
        </Container>
    );
};

export default LocationTab;

const Container = styled.div`
    display: flex;
`;

const Tab = styled.div``;

const NavigatingText = styled.p`
    margin: 0;
`;

const LocationInput = styled.input`
    margin: 0;
`;

const LayerSection = styled.section`
    position: absolute;
    top: 70px;
    left: 0;
`;

const LocationLayer = styled.ul`
    border: 1px solid red;
    width: 493px;
    height: 364px;
`;

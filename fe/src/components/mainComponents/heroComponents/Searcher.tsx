import React, { MutableRefObject, useRef, useState } from 'react';
import styled from 'styled-components';
import SearchIcon from '@material-ui/icons/Search';
import { mockupLocationData } from '../../../data/location';

interface Location {
    id: number;
    city: string;
}

type LocationList = Location[];

const Searcher = (): React.ReactElement => {
    const [location, setLocation] = useState<Location>({
        id: 0,
        city: '',
    });

    const inputOfLocation = useRef<HTMLInputElement>(null);

    const [locationList, setLocationList] = useState<LocationList>([]);

    const [locationLayer, setLocationLayer] = useState<boolean>(false);

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

    const handleClickFocusDelegation: React.MouseEventHandler<HTMLDivElement> = (event) => {
        if (inputOfLocation?.current) {
            inputOfLocation.current.disabled = false;
            inputOfLocation.current.focus();
        }
    };

    return (
        <Search>
            <BarSection>
                <Location onClick={handleClickFocusDelegation}>
                    <NavigatingText>위치</NavigatingText>
                    <LocationInput
                        ref={inputOfLocation}
                        onFocus={() => setLocationLayer(true)}
                        onBlur={() => setLocationLayer(false)}
                        onChange={handleInputLocation}
                        disabled
                    />
                </Location>
                <CheckIn>
                    <NavigatingText>체크인</NavigatingText>
                </CheckIn>
                <CheckOut>
                    <NavigatingText>체크아웃</NavigatingText>
                </CheckOut>
                <Price>
                    <NavigatingText>금액</NavigatingText>
                </Price>
                <People>
                    <NavigatingText>인원</NavigatingText>
                    <SearchButton>
                        <SearchIcon />
                    </SearchButton>
                </People>
            </BarSection>
            <LayerSection>
                {locationLayer && (
                    <LocationLayer>
                        {locationList.map((place: Location) => (
                            <li>{place.city}</li>
                        ))}
                    </LocationLayer>
                )}
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

const Location = styled.div`
    flex: 2;
`;
const CheckIn = styled.div`
    flex: 1;
`;
const CheckOut = styled.div`
    flex: 1;
`;
const Price = styled.div`
    flex: 1;
`;
const People = styled.div`
    flex: 2;
    display: flex;
`;

const SearchButton = styled.button`
    width: 40px;
    height: 40px;
`;

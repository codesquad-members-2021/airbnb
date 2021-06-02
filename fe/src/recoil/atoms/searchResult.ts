import { atom, selector } from 'recoil';

import { reservationString } from './date';
import { queryPrice } from './price';
import { queryGuest } from './guests';

const isMiniSearchBarOpen = atom({
  key: 'isMiniSearchBarOpen',
  default: true,
});

const userLocation = atom({
  key: 'userLocation',
  default: { latitude: 33.450701, longitude: 126.570667 },
});

const mapSizeCoords = atom({
  key: 'mapSizeCoords',
  default: {
    ne_latitude: 100,
    ne_longitude: 100,
    sw_latitude: 0,
    sw_longitude: 0,
  },
});

const queryLocation = selector({
  key: 'queryLocation',
  get: ({ get }) => {
    const coordsMap = get(mapSizeCoords);
    const { ne_latitude, ne_longitude, sw_latitude, sw_longitude } = coordsMap;
    return `ne_lat=${ne_latitude}&ne_lng=${ne_longitude}&sw_lat=${sw_latitude}&sw_lng=${sw_longitude}`;
  },
});

const accomodationList = selector({
  key: 'accomodationList',
  get: async ({ get }) => {
    const reservation = get(reservationString);
    const price = get(queryPrice);
    const guest = get(queryGuest);
    const boundary = get(queryLocation);
    const query = `${reservation}&${price}&${guest}&${boundary}`;
    console.log(query);
    const res = await fetch(
      `http://3.35.178.32:8080/accomodation/search?${query}`
    );
    const data = await res.json();
    return data;
  },
});

export { isMiniSearchBarOpen, userLocation, accomodationList };

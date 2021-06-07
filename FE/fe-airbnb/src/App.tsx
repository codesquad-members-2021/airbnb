import { ThemeProvider } from 'styled-components';
import { BrowserRouter, Route, Switch } from 'react-router-dom';

import './App.css';
import theme from './theme';
import MainPage from '@components/pages/MainPage';
import ReservationPage from '@components/pages/ReservationPage';
import { createContext, useState } from 'react';

import { HotelListContextType, HotelListDataType } from './HotelListDataType';

export const HotelListContext = createContext<HotelListContextType>({hotelListData: null, setHotelListData: null});

function App() {
  const [hotelListData, setHotelListData] = useState<HotelListDataType | null>(null);
  const hotelListState: HotelListContextType = {
    hotelListData,
    setHotelListData
  }

  return (
    <ThemeProvider theme={theme}>
      <HotelListContext.Provider value={hotelListState}>

        <BrowserRouter>
          <Switch>
            <Route path='/' exact>
              <MainPage />
            </Route>
            <Route path='/reservation'>
              <ReservationPage />
            </Route>
          </Switch>
        </BrowserRouter>

      </HotelListContext.Provider>
    </ThemeProvider>
  );
}

export default App;

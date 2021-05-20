import { createContext } from 'react';
import { ReservationContext, ReservationDispatch, SearcherContext, SearchDispatch } from './shared/interface';

export const ReservationStateContext = createContext<ReservationContext | undefined>(undefined);

export const ReservationDispatchContext = createContext<ReservationDispatch | undefined>(undefined);

export const SearcherStateContext = createContext<SearcherContext | undefined>(undefined);

export const SearcherDispatchContext = createContext<SearchDispatch | undefined>(undefined);

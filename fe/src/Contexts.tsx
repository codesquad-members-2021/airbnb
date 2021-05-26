import { createContext } from 'react';
import {
    ReservationContext,
    ReservationDispatch,
    SearcherContext,
    SearchDispatch,
    SearchContext,
    SearchLayerDispatch,
} from './shared/interface';

export const ReservationStateContext = createContext<ReservationContext | undefined>(undefined);

export const ReservationDispatchContext = createContext<ReservationDispatch | undefined>(undefined);

export const SearcherStateContext = createContext<SearcherContext | undefined>(undefined);

export const SearcherDispatchContext = createContext<SearchDispatch | undefined>(undefined);

export const SearcherLayerStateContext = createContext<SearchContext | undefined>(undefined);

export const SearcherLayerDispatchContext = createContext<SearchLayerDispatch | undefined>(undefined);

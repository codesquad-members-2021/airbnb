import { createContext } from 'react';
import { ReservationContext, ReservationDispatch } from './shared/interface';

export const ReservationStateContext = createContext<ReservationContext | undefined>(undefined);

export const ReservationDispatchContext = createContext<ReservationDispatch | undefined>(undefined);

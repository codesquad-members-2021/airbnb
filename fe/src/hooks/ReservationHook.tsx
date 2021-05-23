import { useContext } from 'react';
import { ReservationStateContext, ReservationDispatchContext } from '../Contexts';
import { ReservationDispatch, ReservationContext } from '../shared/interface';

export function useReservationState(): ReservationContext {
    const state = useContext(ReservationStateContext);
    if (!state) throw new Error('Cannot find ReservationStateProvider');
    return state;
}

export function useReservationDispatch(): ReservationDispatch {
    const dispatch = useContext(ReservationDispatchContext);
    if (!dispatch) throw new Error('Cannot find ReservationDispatchProvider');
    return dispatch;
}

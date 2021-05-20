import { useContext } from 'react';
import { ReservationStateContext, ReservationDispatchContext } from '../Contexts';

export function useReservationState() {
    const state = useContext(ReservationStateContext);
    if (!state) throw new Error('Cannot find ReservationStateProvider');
    return state;
}

export function useReservationDispatch() {
    const dispatch = useContext(ReservationDispatchContext);
    if (!dispatch) throw new Error('Cannot find ReservationDispatchProvider');
    return dispatch;
}

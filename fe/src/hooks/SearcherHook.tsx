import { useContext } from 'react';
import { SearcherStateContext, SearcherDispatchContext } from '../Contexts';
import { SearchDispatch, SearcherContext } from '../shared/interface';

export function useSearcherState(): SearcherContext {
    const state = useContext(SearcherStateContext);
    if (!state) throw new Error('Cannot find SearcherStateProvider');
    return state;
}

export function useSearcherDispatch(): SearchDispatch {
    const dispatch = useContext(SearcherDispatchContext);
    if (!dispatch) throw new Error('Cannot find SearcherDispatchProvider');
    return dispatch;
}

// export function useSearcherLayerState(): SearchContext {
//     const state = useContext(SearcherLayerStateContext);
//     if (!state) throw new Error('Cannot find SearcherLayerStateProvider');
//     return state;
// }

// export function useSearcherLayerDispatch(): SearchLayerDispatch {
//     const dispatch = useContext(SearcherLayerDispatchContext);
//     if (!dispatch) throw new Error('Cannot find SearcherLayerDispatchProvider');
//     return dispatch;
// }

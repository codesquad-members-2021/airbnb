import { SearcherContext, SearchAction } from './interface';

export function searchReducer(state: SearcherContext, action: SearchAction): SearcherContext {
    switch (action.type) {
        case 'LOCATION_LIST':
            return { ...state, locationList: action.list };
        case 'LOCATION_LAYER':
            return { ...state, locationLayer: action.state };
        case 'CALENDAR_LAYER':
            return { ...state, calendarLayer: action.state };
        case 'INPUTOFLOCATION':
            return { ...state, inputOfLocation: action.value };
    }
}

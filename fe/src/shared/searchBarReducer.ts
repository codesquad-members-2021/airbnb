import { SearcherContext, SearchAction } from './interface';

export function searchReducer(state: SearcherContext, action: SearchAction): SearcherContext {
    switch (action.type) {
        case 'LOCATION_LIST':
            return { ...state, locationList: action.list };
        case 'LOCATION_LAYER':
            return { ...state, locationLayer: action.state };
        case 'CHECKIN_CALENDAR_LAYER':
            return { ...state, checkInCalendarLayer: action.state };
        case 'CHECKOUT_CALENDAR_LAYER':
            return { ...state, checkOutCalendarLayer: action.state };
        case 'INPUTOFLOCATION':
            return { ...state, inputOfLocation: action.value };
    }
}

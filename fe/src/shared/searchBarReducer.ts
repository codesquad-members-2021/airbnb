import { SearcherContext, SearchAction } from './interface';

export function searchReducer(state: SearcherContext, action: SearchAction): SearcherContext {
    switch (action.type) {
        case 'SHOW_LOCATION_LIST':
            return { ...state, locationList: action.list };
        case 'SHOW_LOCATION_LAYER':
            return {
                ...state,
                locationLayer: action.state,
                checkInCalendarLayer: false,
                checkOutCalendarLayer: false,
                feeLayer: false,
                peopleLayer: false,
            };
        case 'SHOW_CHECKIN_CALENDAR_LAYER':
            return {
                ...state,
                locationLayer: false,
                checkInCalendarLayer: action.state,
                checkOutCalendarLayer: false,
                feeLayer: false,
                peopleLayer: false,
            };
        case 'SHOW_CHECKOUT_CALENDAR_LAYER':
            return {
                ...state,
                locationLayer: false,
                checkOutCalendarLayer: action.state,
                checkInCalendarLayer: false,
                feeLayer: false,
                peopleLayer: false,
            };
        case 'SHOW_INPUTOFLOCATION':
            return { ...state, inputOfLocation: action.value };
        case 'SHOW_FEE_LAYER':
            return {
                ...state,
                locationLayer: false,
                checkInCalendarLayer: false,
                checkOutCalendarLayer: false,
                feeLayer: action.state,
                peopleLayer: false,
            };
        case 'SHOW_PEOPLE_LAYER':
            return {
                ...state,
                locationLayer: false,
                checkOutCalendarLayer: false,
                checkInCalendarLayer: false,
                feeLayer: false,
                peopleLayer: action.state,
            };
    }
}

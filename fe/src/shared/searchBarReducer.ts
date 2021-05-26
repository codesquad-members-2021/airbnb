import { FlareSharp } from '@material-ui/icons';
import { SearcherContext, SearchContext, SearchAction, SearcherLayerStateAction } from './interface';

export function searchReducer(state: SearcherContext, action: SearchAction): SearcherContext {
    switch (action.type) {
        case 'SHOW_LOCATION_LIST':
            return { ...state, locationList: action.list };
        case 'SHOW_LOCATION_LAYER':
            return { ...state, locationLayer: action.state };
        case 'SHOW_CHECKIN_CALENDAR_LAYER':
            return { ...state, checkInCalendarLayer: action.state };
        case 'SHOW_CHECKOUT_CALENDAR_LAYER':
            return { ...state, checkOutCalendarLayer: action.state };
        case 'SHOW_INPUTOFLOCATION':
            return { ...state, inputOfLocation: action.value };
        case 'SHOW_FEE_LAYER':
            return { ...state, feeLayer: action.state };
        case 'SHOW_PEOPLE_LAYER':
            return { ...state, peopleLayer: action.state };
    }
}

export function searcherTabReducer(state: SearchContext, action: SearcherLayerStateAction): SearchContext {
    switch (action.type) {
        case 'SELECT_LOCATION_TAB':
            return {
                ...state,
                locationLayer: true,
                checkInCalendarLayer: false,
                checkOutCalendarLayer: false,
                feeLayer: false,
                peopleLayer: false,
            };
        case 'SELECT_CHECKIN_TAB':
            return {
                ...state,
                locationLayer: false,
                checkInCalendarLayer: true,
                checkOutCalendarLayer: false,
                feeLayer: false,
                peopleLayer: false,
            };
        case 'SELECT_CHECKOUT_TAB':
            return {
                ...state,
                locationLayer: false,
                checkOutCalendarLayer: true,
                checkInCalendarLayer: false,
                feeLayer: false,
                peopleLayer: false,
            };
        case 'SELECT_FEE_TAB':
            return {
                ...state,
                locationLayer: false,
                checkInCalendarLayer: false,
                checkOutCalendarLayer: false,
                feeLayer: true,
                peopleLayer: false,
            };

        case 'SELECT_PEOPLE_TAB':
            return {
                ...state,
                locationLayer: false,
                checkOutCalendarLayer: false,
                checkInCalendarLayer: false,
                feeLayer: false,
                peopleLayer: true,
            };
    }
}

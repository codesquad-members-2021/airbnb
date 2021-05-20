export interface EmptyInterface {}

export interface SearchFilterInterface {
	type: string;
	isEnd: boolean;
	input?: string;
	placeholder?: boolean;
	isCalendarModalOn?: boolean;
	setIsCalendarModalOn?: any;
	isFeeModalOn?: boolean;
	setIsFeeModalOn?: any;
	isGuestModalOn?: boolean;
	setIsGuestModalOn?: any;
	isLocationModalOn?: boolean;
	setIsLocationModalOn?: any;
}

export interface ModalInterface {
	type: string;
}

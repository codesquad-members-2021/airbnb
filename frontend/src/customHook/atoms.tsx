import { atom } from 'recoil'
//Calendar
export const checkInMessage = atom<string | number>({
	key: 'checkIn',
	default: '날짜입력',
})

export const checkOutMessage = atom<string | number>({
	key: 'checkOut',
	default: '날짜입력',
})

//ClickCheck
export const clickCheckIn = atom<boolean>({
	key: 'checkInClicked',
	default: false,
})
export const clickCheckOut = atom<boolean>({
	key: 'checkOutnClicked',
	default: false,
})

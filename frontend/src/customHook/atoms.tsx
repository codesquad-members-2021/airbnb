import { atom, selector } from 'recoil'

export const checkInMessage = atom({
	key: 'checkIn',
	default: '날짜입력',
})

export const setCheckInMessage = selector({
	key: 'checkInDate',
	get({ get }) {
		return `${get(checkInMessage)}`
	},
})

export const checkOutMessage = atom({
	key: 'checkOut',
	default: '날짜입력',
})
export const setCheckOutMessage = selector({
	key: 'checkoutDate',
	get({ get }) {
		return `${get(checkOutMessage)}`
	},
})

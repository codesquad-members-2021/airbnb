import { atom, selector, RecoilState } from 'recoil'
interface T {
	key: string
	default: string | number
}

export const checkInMessage = atom<string | number>({
	key: 'checkIn',
	default: '날짜입력',
})

export const setCheckInMessage = selector({
	key: 'checkInDate',
	get({ get }) {
		return `${get(checkInMessage)}`
	},
})

export const checkOutMessage = atom<string | number>({
	key: 'checkOut',
	default: '날짜입력',
})

export const setCheckOutMessage = selector({
	key: 'checkoutDate',
	get({ get }) {
		return `${get(checkOutMessage)}`
	},
})

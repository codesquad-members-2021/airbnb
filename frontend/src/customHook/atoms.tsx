import { atom } from 'recoil'

export const checkInMessage = atom<string | number>({
	key: 'checkIn',
	default: '날짜입력',
})

export const checkOutMessage = atom<string | number>({
	key: 'checkOut',
	default: '날짜입력',
})

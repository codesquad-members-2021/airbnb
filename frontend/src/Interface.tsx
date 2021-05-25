import { RefObject } from 'react'
export interface IProps {
	clicked: boolean
	open: boolean
	type: string
	checkInToggle?: RefObject<HTMLDivElement>
	checkOutToggle?: RefObject<HTMLDivElement>
	onClick: () => void
}

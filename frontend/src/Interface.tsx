import { RefObject } from 'react'
export interface IProps {
  open: boolean
  type: string
  checkInToggle?: RefObject<HTMLDivElement>
  checkOutToggle?: RefObject<HTMLDivElement>
}
export interface IModalPropType {
  modalType: string
}
export interface IAction {
  type: string
  data?: any
  error?: Error
}
export interface IParams {
  adult: string | undefined
  baby: string | undefined
  checkIn: string | undefined
  checkOut: string | undefined
  child: string | undefined
  maxFeePercent: string | undefined
  minFeePercent: string | undefined
  place: string | undefined
  priceMax: string | undefined
  priceMin: string | undefined
}

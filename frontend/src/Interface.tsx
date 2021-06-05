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
  adult?: string 
  baby?: string 
  checkIn?: string 
  checkOut?: string 
  child?: string 
  maxFeePercent?: string 
  minFeePercent?: string 
  place?: string
  priceMax?: string 
  priceMin?: string 
}

export interface INewSetting {
  adult?: number
  child?: number 
  baby?: number 
  checkIn?: number 
  checkOut?: number
  maxFeePercent?: string 
  minFeePercent?: string 
  place?: string
  priceMax?: string 
  priceMin?: string 
}

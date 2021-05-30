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

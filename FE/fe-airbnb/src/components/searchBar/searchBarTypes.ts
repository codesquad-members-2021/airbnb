export enum SearchBarBtnType {
  CHECK_IN_OUT = 'check-in-out',
  PRICE = 'price',
  HEAD_COUNT = 'head-count',
}

export type SelectedContentProps = {
  contentType: string
}

export type DayContainerProps = {
  isSelected: boolean,
  isBetween: boolean,
  disabled: boolean
}
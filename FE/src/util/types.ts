export type CustomChildren =
  | React.ReactNode
  | React.ReactChild
  | React.ReactChild[]
  | React.ReactChildren
  | React.ReactChildren[];

export interface ICustomProps {
  children?: CustomChildren;
}
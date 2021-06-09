export type CustomChildren =
  | React.ReactNode
  | React.ReactChild
  | React.ReactChild[]
  | React.ReactChildren
  | React.ReactChildren[];

export type TMouseEvent = (e: React.MouseEvent<HTMLElement>) => void;

export interface ICustomProps {
  children?: CustomChildren;
}
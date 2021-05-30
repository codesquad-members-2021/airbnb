import React, { ReactChildren, ReactChild } from "react";
import { useState } from "react";
type DateBlockProps = {
  className: string;
  children: ReactChild | ReactChildren;
  onClick: React.MouseEventHandler<HTMLButtonElement>;
  date: number;
  isClicked: boolean;
};
const DateBlock = ({ children, ...props }: DateBlockProps) => {
  const [currentDate, setCurrentDate] = useState("");

  if (props.isClicked) console.log(props.date);
  return <div>{children}</div>;
};

type TDateBock = {};

export default DateBlock;

import React, { useEffect, useState } from 'react';

interface Props {
  children: JSX.Element[] | JSX.Element | string;
  popUp: JSX.Element[] | JSX.Element;
}

const Toggle = ({ children, popUp }: Props) => {
  const [open, setOpen] = useState(false);
  useEffect(() => {
    const handleClick = ({ target }: any): void => {};
  }, []);
};

export default Toggle;

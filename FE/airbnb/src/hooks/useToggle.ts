import { ReactElement, useState, useEffect } from 'react';

interface refs {
  clickRef: any; //HTMLDivElement | HTMLDivElement[] |
  toggleRef: any; //HTMLDivElement | ReactElement |
}

const useToggle = ({ clickRef, toggleRef }: refs): boolean => {
  const [open, setOpen] = useState<boolean>(false);

  useEffect(() => {
    document.body.addEventListener('click', handleClick);
    return () => document.body.removeEventListener('click', handleClick);
  }, []);

  const handleClick = (e: MouseEvent): void => {
    const { target } = e;
    if (toggleRef.current?.contains(target)) {
      setOpen(true);
      return;
    }
    if (clickRef instanceof Array) {
      for (const elem of clickRef) {
        if (elem.current.contains(target)) {
          setOpen((open) => !open);
          return;
        }
      }
    } else {
      if (clickRef.current?.contains(target)) {
        setOpen((open) => !open);
        return;
      }
    }
    setOpen(false);
    return;
  };

  return open;
};

export default useToggle;

import { RefObject, useState, useEffect } from 'react';

interface refsType {
  clickRef: RefObject<HTMLDivElement | HTMLDivElement[]>;
  toggleRef: RefObject<HTMLDivElement>;
}

const useToggle = ({ clickRef, toggleRef }: refsType): boolean => {
  const [open, setOpen] = useState<boolean>(false);
  const [selectElement, setSelectElement] = useState<HTMLDivElement>();

  useEffect(() => {
    document.body.addEventListener('click', handleClick);
    return () => document.body.removeEventListener('click', handleClick);
  }, []);

  const handleClick = (e: MouseEvent): void => {
    const { target } = e;
    if (toggleRef.current?.contains(target as Node)) {
      setOpen(true);
      return;
    }
    if (clickRef.current instanceof Array) {
      for (const elem of clickRef.current) {
        if ((elem as Node).contains(target as Node) && selectElement === elem)
          setOpen((open) => !open);
        else setOpen(true);
        setSelectElement(elem);
        return;
      }
    } else {
      if (clickRef.current?.contains(target as Node)) {
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

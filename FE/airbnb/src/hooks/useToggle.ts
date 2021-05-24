import { RefObject, useState, useEffect } from 'react';

interface refsType {
  // clickRef: any;
  clickRef: RefObject<HTMLDivElement> | RefObject<HTMLDivElement>[];
  toggleRef: RefObject<HTMLDivElement>;
}

const useToggle = ({ clickRef, toggleRef }: refsType): boolean => {
  const [open, setOpen] = useState<boolean>(false);
  const [selectElement, setSelectElement] = useState<HTMLDivElement>();

  useEffect(() => {
    document.body.addEventListener('click', handleClick);
    return () => document.body.removeEventListener('click', handleClick);
  }, [selectElement]);

  const handleClick = (e: MouseEvent): void => {
    const { target } = e;

    if (toggleRef.current?.contains(target as Node)) {
      setOpen(true);
      return;
    }

    if (clickRef instanceof Array) {
      for (const elem of clickRef) {
        if ((elem.current as Node).contains(target as Node) && selectElement === elem.current) {
          setOpen((open) => !open);
          return;
        } else if ((elem.current as Node).contains(target as Node)) {
          setOpen(true);
          setSelectElement(elem.current as HTMLDivElement);
          return;
        }
      }
    } else {
      if ((clickRef.current as HTMLDivElement).contains(target as Node)) {
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

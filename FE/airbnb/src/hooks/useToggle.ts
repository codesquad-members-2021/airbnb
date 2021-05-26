import { RefObject, useState, useEffect } from 'react';

interface refsType {
  clickRef: RefObject<HTMLDivElement> | RefObject<HTMLDivElement>[];
  toggleRef: RefObject<HTMLDivElement>;
  isChekcInSelected?: boolean;
}

interface toggleStateTypes {
  open: boolean;
}

const useToggle = ({ clickRef, toggleRef, isChekcInSelected }: refsType): toggleStateTypes => {
  const [open, setOpen] = useState<boolean>(false);
  const [selectType, setSelectType] = useState<string>();

  useEffect(() => {
    document.body.addEventListener('click', handleClick);
    return () => document.body.removeEventListener('click', handleClick);
  }, [selectType]);

  useEffect(() => {
    if (isChekcInSelected) setSelectType('checkIn');
    else setSelectType('checkOut');
  }, [isChekcInSelected]);

  const handleClick = (e: MouseEvent): void => {
    const { target } = e;

    if (toggleRef.current?.contains(target as HTMLDivElement)) {
      setOpen(true);
      return;
    }

    if (clickRef instanceof Array) {
      for (const elem of clickRef) {
        if (
          (elem.current as HTMLDivElement).contains(target as HTMLDivElement) &&
          selectType === elem.current?.dataset.type
        ) {
          setOpen((open) => !open);
          return;
        } else if ((elem.current as HTMLDivElement).contains(target as HTMLDivElement)) {
          setOpen(true);
          setSelectType(elem.current?.dataset.type);
          return;
        }
      }
    } else {
      if ((clickRef.current as HTMLDivElement).contains(target as HTMLDivElement)) {
        setOpen((open) => !open);
        return;
      }
    }

    setOpen(false);
    return;
  };

  return { open };
};

export default useToggle;

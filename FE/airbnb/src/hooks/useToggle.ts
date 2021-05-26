import { RefObject, useState, useEffect } from 'react';
import { useRecoilValue } from 'recoil';
import { selectCheckBoxState } from '../recoil/calendarAtom';

interface refsType {
  clickRef: RefObject<HTMLDivElement> | RefObject<HTMLDivElement>[];
  toggleRef: RefObject<HTMLDivElement>;
}

interface toggleStateTypes {
  open: boolean;
}

const useToggle = ({ clickRef, toggleRef }: refsType): toggleStateTypes => {
  const selectBox = useRecoilValue(selectCheckBoxState);
  const [open, setOpen] = useState<boolean>(false);
  const [selectType, setSelectType] = useState<string>();
  useEffect(() => {
    document.body.addEventListener('click', handleClick);
    return () => document.body.removeEventListener('click', handleClick);
  }, [selectType]);

  useEffect(() => {
    setSelectType(selectBox);
  }, [selectBox]);

  const handleClick = (e: MouseEvent): void => {
    const { target } = e;

    if (toggleRef.current?.contains(target as Node)) {
      setOpen(true);
      return;
    }

    if (clickRef instanceof Array) {
      for (const elem of clickRef) {
        if (
          (elem.current as Node).contains(target as Node) &&
          selectType === elem.current?.dataset.type
        ) {
          setOpen((open) => !open);
          return;
        } else if ((elem.current as Node).contains(target as Node)) {
          setOpen(true);
          setSelectType(elem.current?.dataset.type);
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

  return { open };
};

export default useToggle;

import React from "react";

interface eventAndSetstate {
  e: React.MouseEvent;
  setState: (state: boolean) => void;
  state?: boolean;
}

// 모달 토글
const toggleModal = ({ e, setState, state }: eventAndSetstate): void => {
  e.stopPropagation();
  setState(!state);
};

// 누르면 무조건 열리게
const openModal = ({ e, setState }: eventAndSetstate): void => {
  e.stopPropagation();
  setState(true);
};

// 해당 모달을 클릭했을 때 닫히지 않도록(body Click X)
const stopPropagation = (e: React.MouseEvent) => e.stopPropagation();

// 모달 외의 영역 클릭하면 닫히게
const closeModalByBodyClick = (setState: (state: any) => void) => {
  return document.body.addEventListener("click", () => {
    setState(false);
  });
};

// const setYear = useSetRecoilState(yearState);
//     const setMonth = useSetRecoilState(monthState);
//     if (useRecoilValue(checkoutDateState) !== "날짜 입력") {
//       const checkinDate = useRecoilValue(checkinDateState);
//       setYear(+checkinDate.substr(0, 4));
//       setMonth(+checkinDate.substr(4, 2));
//     }

export { toggleModal, openModal, stopPropagation, closeModalByBodyClick };

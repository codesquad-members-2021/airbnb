import React from "react";
interface toggleModalType {
  e: React.MouseEvent;
  setState: (state: boolean) => void;
  state: boolean;
}

interface openModalType {
  e: React.MouseEvent;
  openModal: (state: boolean) => void;
  closeModal: { (state: boolean): void }[];
}

// 모달 토글
const toggleModal = ({ e, setState, state }: toggleModalType): void => {
  e.stopPropagation();
  setState(!state);
};

// 누르면 무조건 열리게
const openModal = ({ e, openModal, closeModal }: openModalType): void => {
  e.stopPropagation();
  openModal(true);
  closeModal.forEach((setState) => setState(false));
};

// 해당 모달을 클릭했을 때 닫히지 않도록(body Click X)
const stopPropagation = (e: React.MouseEvent) => e.stopPropagation();

// 모달 외의 영역 클릭하면 닫히게
const closeModalByBodyClick = (...setState: { (state: any): void }[]) => {
  return document.body.addEventListener("click", () => {
    setState.forEach((f) => f(false));
  });
};

export { toggleModal, openModal, stopPropagation, closeModalByBodyClick };

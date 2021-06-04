import styled from 'styled-components';
import { useRef } from 'react';
import { CustomChildren } from '../../util/types';

interface IModalFluid {
  children?: CustomChildren;
  isModalVisible: boolean;
  setIsModalVisible: (flag: boolean) => void;
  onClick?: (e: React.MouseEvent | MouseEvent) => void;
}

const ModalFluid = ({
  setIsModalVisible,
  isModalVisible,
  children,
  ...props
}: IModalFluid) => {
  const modalWrapRef = useRef<HTMLDivElement>(null);
  const handleCloseClick = (e: React.MouseEvent | MouseEvent) => {
    const target = e.target as HTMLElement;
    const wrap = modalWrapRef.current;
    if (target !== wrap) return;
    setIsModalVisible(!isModalVisible);
  };

  return (
    <ModalFluidLayout
      {...props}
      isModalVisible={isModalVisible}
      ref={modalWrapRef}
      onClick={handleCloseClick}
    >
      <ModalBlock>{children}</ModalBlock>
    </ModalFluidLayout>
  );
};

export default ModalFluid;

// --- Styled Components ---
const ModalFluidLayout = styled.div<{ isModalVisible: boolean }>`
  visibility: ${({ isModalVisible }) =>
    isModalVisible ? 'visible' : 'hidden'};

  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 9999;

  display: flex;
  justify-content: center;
  align-items: center;

  background-color: rgba(0, 0, 0, 0.4);
`;

const ModalBlock = styled.div`
  position: relative;
`;

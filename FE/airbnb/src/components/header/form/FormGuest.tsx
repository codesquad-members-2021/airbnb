import styled from 'styled-components';
import HoverBlock from '../HoverBlock';
import FormColumn from './FormColumn';
import { IoSearch } from 'react-icons/io5';
import { MouseEvent, useEffect, useRef } from 'react';
import useToggle from '../../../hooks/useToggle';
import FormGuestToggle from './guestToggle/FormGuestToggle';
import { useRecoilState, useRecoilValue, useResetRecoilState } from 'recoil';
import { guestState, isFormOpenedState } from '../../../recoil/headerAtom';
import { ReactComponent as DeleteBtn } from '../../../assets/svg/Property 1=x-circle.svg';

const FormGuest = () => {
  const clickRef = useRef<HTMLDivElement>(null);
  const toggleRef = useRef<HTMLDivElement>(null);
  const { open } = useToggle({ clickRef, toggleRef });
  const guestCount = useRecoilValue(guestState);
  const resetGuestCount = useResetRecoilState(guestState);
  const [isFormOpened, setIsFormOpened] = useRecoilState(isFormOpenedState);
  const totalCount = Object.values(guestCount).reduce((acc, cur) => acc + cur);
  const isShowDeleteBtn = totalCount !== 0 && open;

  useEffect(() => {
    if (open) setIsFormOpened(true);
    else setIsFormOpened(false);
  }, [open]);

  const getGuestDesc = () => {
    if (guestCount.infants > 0) {
      const infants = guestCount.infants;
      return `게스트 ${totalCount - infants}명, 유아 ${infants}명`;
    }

    if (totalCount === 0) return `게스트 추가`;

    return `게스트 ${totalCount}명`;
  };

  const handleDeleteClick = (e: MouseEvent): void => {
    e.stopPropagation();
    resetGuestCount();
  };

  return (
    <StyledFormGuestWrapper>
      <StyledFormGuest ref={clickRef} isFormOpened={isFormOpened}>
        <HoverBlock color='gray4' className='hover__guest' dataKey='guest' isModal={open}>
          <FormColumn title='인원' description={getGuestDesc()} />
          {isShowDeleteBtn && <DeleteBtn onClick={handleDeleteClick} />}
          <div className='search-icon'>
            <IoSearch />
            {isFormOpened && <div className='search'>검색</div>}
          </div>
        </HoverBlock>
      </StyledFormGuest>
      {open && <FormGuestToggle toggleRef={toggleRef} />}
    </StyledFormGuestWrapper>
  );
};

export default FormGuest;

const StyledFormGuestWrapper = styled.div`
  position: relative;
`;

interface StyledProps {
  isFormOpened: boolean;
}

const StyledFormGuest = styled.div<StyledProps>`
  height: 100%;
  .hover__guest {
    height: 100%;
    padding: 1rem;
    border-radius: 3rem;
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-right: 0.5rem;
  }
  .search-icon {
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: ${({ theme }) => theme.colors.red};
    color: ${({ theme }) => theme.colors.white};
    font-size: 1.5rem;
    width: ${({ isFormOpened }) => (isFormOpened ? '90px' : '40px')};
    height: 40px;
    border-radius: ${({ isFormOpened }) => (isFormOpened ? '30px' : '100%')};
    .search {
      font-size: ${({ theme }) => theme.fontSize.medium};
      font-weight: 600;
      margin-left: 6px;
    }
  }
`;

import { useRef, useEffect, FormEvent } from 'react';
import { useRecoilState, useResetRecoilState, useSetRecoilState } from 'recoil';
import styled from 'styled-components';
import useToggle from '../../../hooks/useToggle';
import { isFormOpenedState, locationState } from '../../../recoil/headerAtom';
import HoverBlock from '../HoverBlock';
import FormColumn from './FormColumn';
import FormLocationToggle from './FormLocationToggle';
import { ReactComponent as DeleteBtn } from '../../../assets/svg/Property 1=x-circle.svg';

const FormLocation = () => {
  const clickRef = useRef<HTMLDivElement>(null);
  const toggleRef = useRef<HTMLDivElement>(null);
  const { open } = useToggle({ clickRef, toggleRef });
  const setIsFormOpened = useSetRecoilState(isFormOpenedState);
  const inputRef = useRef<HTMLInputElement>(null);
  const [location, setLocation] = useRecoilState(locationState);
  const clearLocation = useResetRecoilState(locationState);

  const isShowDeleteBtn = open;

  useEffect(() => {
    if (open) {
      setIsFormOpened(true);
      if (inputRef.current) inputRef.current.focus();
    } else setIsFormOpened(false);
  }, [open]);

  const handleInput = (e: FormEvent<HTMLInputElement>) => {
    setLocation(e.currentTarget.value);
  };

  const handleDeleteBtn = () => {
    clearLocation();
    if (inputRef.current) inputRef.current.value = '';
  };

  return (
    <StyledLocationWrapper>
      <StyledFormLocation ref={clickRef} data-type='location'>
        <HoverBlock color='gray4' className='hover__location' dataKey='location' isModal={open}>
          <FormColumn
            title='위치'
            description='어디로 여행가세요'
            isInput={true}
            inputRef={inputRef}
            handleInput={handleInput}
          />
          {isShowDeleteBtn && <DeleteBtn onClick={handleDeleteBtn} />}
        </HoverBlock>
      </StyledFormLocation>
      {open && <FormLocationToggle toggleRef={toggleRef} />}
    </StyledLocationWrapper>
  );
};

export default FormLocation;

const StyledLocationWrapper = styled.div`
  position: relative;
`;

const StyledFormLocation = styled.div`
  .hover__location {
    display: flex;
    align-items: center;
    justify-content: space-between;
    height: 100%;
    padding: 1rem;
    border-radius: 3rem;
    cursor: pointer;
    padding-left: 2rem;
  }
`;

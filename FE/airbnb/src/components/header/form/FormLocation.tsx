import { useRef } from 'react';
import styled from 'styled-components';
import useToggle from '../../../hooks/useToggle';
import HoverBlock from '../HoverBlock';
import FormColumn from './FormColumn';
import FormLocationToggle from './FormLocationToggle';

const FormLocation = () => {
  const clickRef = useRef<HTMLDivElement>(null);
  const toggleRef = useRef<HTMLDivElement>(null);
  const { open } = useToggle({ clickRef, toggleRef });

  return (
    <StyledLocationWrapper>
      <StyledFormLocation ref={clickRef} data-type='location'>
        <HoverBlock color='gray4' className='hover__location' dataKey='location' isModal={open}>
          <FormColumn title='위치' description='어디로 여행가세요' isInput={true} />
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
    height: 100%;
    padding: 1rem;
    border-radius: 3rem;
    cursor: pointer;
    padding-left: 2rem;
  }
`;

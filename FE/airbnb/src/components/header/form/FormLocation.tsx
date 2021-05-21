import { RefObject, useRef } from 'react';
import styled from 'styled-components';
import useToggle from '../../../hooks/useToggle';
import HoverBlock from '../HoverBlock';
import FormColumn from './FormColumn';

const FormLocation = () => {
  const clickRef = useRef<HTMLDivElement>(null);
  const toggleRef = useRef<HTMLDivElement>(null);
  //   const open = useToggle();
  return (
    <StyledLocationWrapper>
      <StyledFormLocation ref={clickRef}>
        <HoverBlock color='gray4' className='hover__location'>
          <FormColumn title='위치' description='어디로 여행가세요' isInput={true} />
        </HoverBlock>
      </StyledFormLocation>
      <FormLocationToggle toggleRef={toggleRef} />
    </StyledLocationWrapper>
  );
};
//-------------------------------------------------
interface toggleType {
  toggleRef: RefObject<HTMLDivElement>;
}
const FormLocationToggle = ({ toggleRef }: toggleType) => {
  return (
    <StyledFormLocationToggle ref={toggleRef}>가까운 여행지 둘러보기</StyledFormLocationToggle>
  );
};

export default FormLocation;

const StyledLocationWrapper = styled.div`
  position: relative;
`;

const StyledFormLocation = styled.div`
  .hover__location {
    padding: 1rem;
    border-radius: 3rem;
    cursor: pointer;
    padding-left: 2rem;
  }
`;

const StyledFormLocationToggle = styled.div`
  position: absolute;
  bottom: -4rem;
  width: 300px;
  padding: 1rem;
  background-color: ${({ theme }) => theme.colors.green};
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: 40px;
`;

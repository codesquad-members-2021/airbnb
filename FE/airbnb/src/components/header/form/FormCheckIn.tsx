import styled from 'styled-components';
import HoverBlock from '../HoverBlock';
import FormColumn from './FormColumn';

const FormCheckIn = () => {
  return (
    <StyledFormCheckIn>
      <HoverBlock color='gray4' className='hover__checkIn'>
        <FormColumn title='체크인' description='날짜' isInput={true} />
      </HoverBlock>
    </StyledFormCheckIn>
  );
};

export default FormCheckIn;

const StyledFormCheckIn = styled.div`
  .hover__checkIn {
    padding: 1rem;
    border-radius: 3rem;
    cursor: pointer;
  }
`;

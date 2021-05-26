import styled from 'styled-components';
import HoverBlock from '../HoverBlock';
import FormColumn from './FormColumn';

const FormPrice = () => {
  return (
    <StyledFormPrice>
      <HoverBlock color='gray4' className='hover__price' dataKey='price'>
        <FormColumn title='요금' description='금액대 설정' />
      </HoverBlock>
    </StyledFormPrice>
  );
};

export default FormPrice;

const StyledFormPrice = styled.div`
  .hover__price {
    height: 100%;
    padding: 1rem;
    border-radius: 3rem;
    cursor: pointer;
  }
`;

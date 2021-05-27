import styled from 'styled-components';
import HoverBlock from '../HoverBlock';
import FormColumn from './FormColumn';
import { IoSearch } from 'react-icons/io5';

const FormGuest = () => {
  return (
    <StyledFormGuest>
      <HoverBlock color='gray4' className='hover__guest' dataKey='guest'>
        <FormColumn title='인원' description='게스트 추가' />
        <div className='search-icon'>
          <IoSearch />
        </div>
      </HoverBlock>
    </StyledFormGuest>
  );
};

export default FormGuest;

const StyledFormGuest = styled.div`
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
    width: 40px;
    height: 40px;
    border-radius: 100%;
  }
`;

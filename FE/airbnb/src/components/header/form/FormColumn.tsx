import { FormEvent, RefObject } from 'react';
import styled from 'styled-components';

interface Props {
  title: string;
  description: string;
  isInput?: boolean;
  inputRef?: RefObject<HTMLInputElement>;
  handleInput?: (e: FormEvent<HTMLInputElement>) => void;
}

const FormColumn = ({ title, description, isInput, inputRef, handleInput }: Props) => {
  return (
    <StyledFormColumn>
      <div className='title'>{title}</div>
      {isInput ? (
        <input
          type='text'
          name='locationInput'
          placeholder={description}
          ref={inputRef}
          onChange={handleInput}
          autoComplete='off'
        />
      ) : (
        <div className='description'>{description}</div>
      )}
    </StyledFormColumn>
  );
};

export default FormColumn;

const StyledFormColumn = styled.div`
  min-width: 7rem;
  .title {
    font-weight: 600;
    margin-bottom: 0.3rem;
  }
  .description {
    font-size: 0.9rem;
    color: ${({ theme }) => theme.colors.gray3};
  }
`;

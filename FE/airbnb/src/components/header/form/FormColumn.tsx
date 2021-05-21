import styled from 'styled-components';

interface Props {
  title: string;
  description: string;
  isInput?: boolean;
}

const FormColumn = ({ title, description, isInput }: Props) => {
  return (
    <StyledFormColumn>
      <div className='title'>{title}</div>
      {isInput ? (
        <input type='text' name='locationInput' placeholder={description} />
      ) : (
        <div className='description'>{description}</div>
      )}
    </StyledFormColumn>
  );
};

export default FormColumn;

const StyledFormColumn = styled.div`
  min-width: 8rem;
  .title {
    font-weight: 600;
    margin-bottom: 0.3rem;
  }
  .description {
    font-size: 0.9rem;
    color: ${({ theme }) => theme.colors.gray3};
  }
`;

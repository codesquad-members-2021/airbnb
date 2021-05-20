import styled from 'styled-components';

interface Props {
  title: string;
  description: string;
}

const FormColumn = ({ title, description }: Props) => {
  return (
    <StyledFormColumn>
      <div className='title'>{title}</div>
      <div className='description'>{description}</div>
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
    color: ${({ theme }) => theme.colors.gray3};
  }
`;

import styled from 'styled-components';

import Menu from './Menu';

const Form = () => {
  return (
    <>
      <FormWrap>
        <Menu />
      </FormWrap>
    </>
  );
};

export default Form;

const FormWrap = styled.form`
  display: flex;
  flex-direction: column;
  width: 916px;
`;

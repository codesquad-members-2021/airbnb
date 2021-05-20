import styled from 'styled-components';
import { PersonnelType } from '../commons/searchBarType';


const PersonnelModal = ({ personnel }: PersonnelType) => {
  return (
    <PersonnelModalWrapper {...{personnel}}>

    </PersonnelModalWrapper>
  );
};

// eslint-disable-next-line no-mixed-operators
const PersonnelModalWrapper = styled.div<PersonnelType>`
  display: ${({ personnel }) => personnel ? 'block' : 'none'};
  width: 45%;
  background: #fff;
  margin-left: auto;
  padding: 7% 7%; 
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: 40px;
`;

export default PersonnelModal;

import styled from 'styled-components';
import { ChargeType } from '../commons/searchBarType';

const ChargeModal = ({ charge }: ChargeType) => {
  return (
    <ChargeModalWrapper {...{charge}}>

    </ChargeModalWrapper>
  )
}

// eslint-disable-next-line no-mixed-operators
const ChargeModalWrapper = styled.div<ChargeType>`
  display: ${({charge}) => charge ? 'block' : 'none'};
  width: 60%;
  background: #fff;
  margin-left: auto;
  padding: 5% 7%; 
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: 40px;
`;
export default ChargeModal;

import { Flex, Spacer } from '@chakra-ui/layout';
import styled from 'styled-components';

const Category = (props) => {
  return (
    <Div>
      <Flex>
        <div>숙소</div>
        <Spacer />
        <div>체험</div>
        <Spacer />
        <div>온라인 체험</div>
      </Flex>
    </Div>
  );
};

const Div = styled.div`
  width: 20%;
`;

export default Category;

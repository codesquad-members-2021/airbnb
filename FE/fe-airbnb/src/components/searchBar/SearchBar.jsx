import { Center, Container, Flex, Spacer } from '@chakra-ui/layout';
import styled from 'styled-components';
import SearchButton from '../SearchButton';

const SearchBar = (props) => {
  return (
    <Center>
      <Div>
        <Container maxW="900px">
          <Flex>
            <Flex direction="column">
              <div>체크인</div>
              <div>날짜 입력</div>
            </Flex>
            <Spacer />
            <Flex direction="column">
              <div>체크아웃</div>
              <div>날짜 입력</div>
            </Flex>
            <Spacer />
            <Flex direction="column">
              <div>요금</div>
              <div>금액대 설정</div>
            </Flex>
            <Spacer />
            <Flex direction="column">
              <div>인원</div>
              <div>게스트 추가</div>
            </Flex>
            <Spacer />
            <SearchButton size="compact" />
          </Flex>
        </Container>
      </Div>
    </Center>
  );
};

const Div = styled.div`
  width: 916px;
  height: 76px;
  background-color: ${({ theme }) => theme.colors.white};
  border: 1px solid ${({ theme }) => theme.colors.gray4};
  border-radius: ${({ theme }) => theme.borders.XL};
`;

export default SearchBar;

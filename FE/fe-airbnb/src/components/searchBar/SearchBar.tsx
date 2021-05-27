import { Center, Container, Flex, Spacer } from '@chakra-ui/layout';
import styled from 'styled-components';
import SearchButton from '../SearchButton';
import SearchBarBtn from './SearchBarBtn';

function SearchBar() {
  return (
    <Center>
      <SearchBarContainer>
        <Flex>
          <SearchBarBtn>
            <CheckInOut>
              <Flex direction="column">
                <SearchBarSubTitle>체크인</SearchBarSubTitle>
                <SelectedContent contentType="placeholder">날짜 입력</SelectedContent>
              </Flex>
              <CustomSpacer />
              <Flex direction="column">
                <SearchBarSubTitle>체크아웃</SearchBarSubTitle>
                <SelectedContent contentType="placeholder">날짜 입력</SelectedContent>
              </Flex>
            </CheckInOut>
          </SearchBarBtn>

          <SearchBarBtn>
            <Flex direction="column">
                <SearchBarSubTitle>요금</SearchBarSubTitle>
                <SelectedContent contentType="placeholder">금액대 설정</SelectedContent>
            </Flex>
          </SearchBarBtn>

          <SearchBarBtn>
            <Flex direction="column">
              <SearchBarSubTitle>인원</SearchBarSubTitle>
              <SelectedContent contentType="placeholder">게스트 추가</SelectedContent>
            </Flex>
          </SearchBarBtn>

          <SearchButtonContainer>
            <SearchButton size="compact" />
          </SearchButtonContainer>
        </Flex>
      </SearchBarContainer>
    </Center>
  );
};

const SearchBarContainer = styled.div`
  width: 916px;
  height: 76px;
  background-color: ${({ theme }) => theme.colors.white};
  border: 1px solid ${({ theme }) => theme.colors.gray4};
  border-radius: ${({ theme }) => theme.borders.XL};
  position: relative;
`;

const SearchBarSubTitle = styled.div`
  font-size: ${({theme}) => theme.fontSizes.XS};
  font-weight: bold;
  width: 112px;
  height: 17px;
  margin-bottom: 4px;
`

const CheckInOut = styled.div`
  display: flex;
`

const CustomSpacer = styled.div`
  width: 24px;
`

type SelectedContentProps = {
  contentType: string
}
const SelectedContent = styled.div<SelectedContentProps>`
  font-size: ${({theme}) => theme.fontSizes.SM};
  color: ${({contentType, theme}) => contentType === 'placeholder' ? theme.colors.gray2 : theme.colors.black};
  width: 112px;
  height: 23px;
`

const SearchButtonContainer = styled.div`
  position: absolute;
  top: 18px;
  right: 18px;
`

export default SearchBar;

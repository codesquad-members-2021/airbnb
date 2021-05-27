import styled from 'styled-components';
import { ReactElement } from 'react'

type SearchBarBtnProps = {
  children: ReactElement[] | any;
}

function SearchBarBtn({children}: SearchBarBtnProps): ReactElement {
  return (
    <SearchBarBtnContainer>
      {children}
    </SearchBarBtnContainer>
  )
}

const SearchBarBtnContainer = styled.div`
  display: flex;
  align-items: center;
  padding: 14px 24px; 
  width: 100%;
  height: 76px;
  border-radius: ${({theme}) => theme.borders.XL};

  &:hover {
    background-color: ${({theme}) => theme.colors.gray5};
  }
`

export default SearchBarBtn

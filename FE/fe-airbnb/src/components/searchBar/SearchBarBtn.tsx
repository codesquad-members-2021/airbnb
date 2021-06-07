import styled from 'styled-components';
import { ReactElement } from 'react'

type SearchBarBtnProps = {
  children: ReactElement[] | any;
  onClick: () => void;
}

function SearchBarBtn({children, onClick}: SearchBarBtnProps): ReactElement {
  return (
    <SearchBarBtnContainer onClick={onClick}>
      {children}
    </SearchBarBtnContainer>
  )
}

const SearchBarBtnContainer = styled.div`
  display: flex;
  align-items: center;
  padding: 15px 24px; 
  width: 100%;
  border-radius: ${({theme}) => theme.borders.XL};

  &:hover {
    background-color: ${({theme}) => theme.colors.gray5};
  }
`

export default SearchBarBtn

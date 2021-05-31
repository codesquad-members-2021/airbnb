import styled from 'styled-components'
import SearchIcon from '@material-ui/icons/Search'
import IconButton from '@material-ui/core/IconButton'
import Button from '@material-ui/core/Button'

function MiniSearchBar() {
  return (
    <SearchBar>
      <div>근처 추천 장소</div>
      <div>날짜 입력</div>
      <div>게스트 추가</div>
      <IconButton
        color='secondary'
        className={'routerBtn'}
        component='span'
        size='small'
        style={{ backgroundColor: 'pink' }}
      >
        <SearchIcon />
      </IconButton>
    </SearchBar>
  )
}

const SearchBar = styled.div`
  display: flex;
  width: 410px;
  height: 50px;
  background-color: ${({ theme }) => theme.color.white};
  border: 1px solid ${({ theme }) => theme.color.grey_2};
  border-radius: 50px;
  padding: 0 14px;
  align-items: center;
  div {
    font-size: ${({ theme }) => theme.fontSize.super_sm};
    padding: 0 16px;
    width: 100px;
    text-align: center;
    border-right: 1px solid ${({ theme }) => theme.color.grey_2};
    &: nth-child(3) {
      border-right: none;
    }
  }
`

export default MiniSearchBar

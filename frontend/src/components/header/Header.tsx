import styled from 'styled-components'
import Logo from './Logo'
import CenterMenu from './CenterMenu'
import UserInfo from './UserInfo'

function Header() {
  return (
    <FlexBox>
      <Logo />
      <CenterMenu />
      <UserInfo />
    </FlexBox>
  )
}

const FlexBox = styled.div`
  display: flex;
  justify-content: space-around;
  padding-top: 30px;
`
export default Header

import styled from 'styled-components'
import { Link } from 'react-router-dom'
function Logo() {
  const style = { textDecoration: 'none', color: 'black' }
  return (
    <Link to='/' style={style}>
      <LogoBlock>십오</LogoBlock>
    </Link>
  )
}

const LogoBlock = styled.div`
  font-weight: ${({ theme }) => theme.fontWeight.w3};
  font-size: ${({ theme }) => theme.fontSize.super_lg};
  text-decoration: none;
`

export default Logo

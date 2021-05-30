import styled from 'styled-components'

function Logo() {
  return <LogoBlock>십오</LogoBlock>
}

const LogoBlock = styled.div`
  font-weight: ${({ theme }) => theme.fontWeight.w3};
  font-size: ${({ theme }) => theme.fontSize.super_lg};
`

export default Logo

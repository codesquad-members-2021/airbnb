import styled from 'styled-components'

const Logo = () =>{

  return <LogoBlock>십오</LogoBlock>
}

const LogoBlock = styled.div`
color: ${props=> props.theme.color.black};
font-weight: ${props=> props.theme.fontWeight.w3};
font-size: ${props=> props.theme.fontSize.super_lg};`

export default Logo
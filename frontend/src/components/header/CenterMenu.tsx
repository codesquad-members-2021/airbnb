import styled from 'styled-components'
import { AlignTextCenter } from '../../style/Theme'
interface CenterStyle{
  type?: string
}

function CenterMenu({type}:CenterStyle) {
  const menuLists = ['숙소', '체험',' 온라인체험']
  return (
    <FlexBox>
      {menuLists.map((list,idx)=><Menu type={type}>{list}</Menu>)}
    </FlexBox>
  )
}

const FlexBox = styled(AlignTextCenter)`
  width: 200px;
  justify-content: space-around;
`
const Menu = styled.div<CenterStyle>`
  font-size: ${({ theme }) => theme.fontSize.super_sm};
  color: ${(props) => props.type==='black' ? props.theme.color.black : props.theme.color.white};
  &:hover {
    cursor: pointer;
    text-decoration: underline;
  }
`
export default CenterMenu

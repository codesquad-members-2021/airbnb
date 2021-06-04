import styled from 'styled-components'
import { AlignTextCenter } from '../../style/Theme'

function CenterMenu() {
  return (
    <FlexBox>
      <Menu>숙소</Menu>
      <Menu>체험</Menu>
      <Menu>온라인체험</Menu>
    </FlexBox>
  )
}
const FlexBox = styled(AlignTextCenter)`
  width: 200px;
  justify-content: space-around;
`
const Menu = styled.div`
  font-size: ${({ theme }) => theme.fontSize.super_sm};
  color: ${({ theme }) => theme.color.white};
  &:hover {
    cursor: pointer;
    text-decoration: underline;
  }
`
export default CenterMenu

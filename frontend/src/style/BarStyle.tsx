import styled, {css} from 'styled-components'
interface IClick {
  clicked: boolean,
}
interface IType {
  modalType: string;
}
export const BarTitle = styled.div`
  height: 17px;
  font-weight: ${props=> props.theme.fontWeight.w2};
  font-size: ${props=> props.theme.fontSize.super_sm};`
export const BarMessage = styled.div`
  height: 23px;
  font-weight: ${props=> props.theme.fontWeight.w1};
  font-size: ${props=> props.theme.fontSize.sm};
  color: ${props=>props.theme.color.grey_4};`
export const BarInnerWrapper = styled.div`
  padding:16px;`
export const BarBlock=styled.div<IClick>`
  width:280px;
  height: 76px;
  cursor:pointer;
  &: hover {
    background-color: ${props=>props.theme.color.grey_1};
    border-radius: 60px;
  }
  ${props=>props.clicked && 
    css`box-shadow:  0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
    border-radius: 60px;
    z-index:9999;
    `};
`

export const Modal = styled.div<IType>`
  padding: ${props=>props.theme.modalPadding[props.modalType]};
  width: ${props=>props.theme.modalWidth[props.modalType]};
  height: ${props=>props.theme.modalHeight[props.modalType]};
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: 40px;
  overflow: hidden;
  `
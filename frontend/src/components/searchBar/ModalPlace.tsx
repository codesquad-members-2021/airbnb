import styled from 'styled-components'
interface IType {
  modalType: string;
}
const ModalPlace:React.FunctionComponent<IType> = ({modalType}) =>{


return(
  <>
    <Modal></Modal>
  </>
)
}
const Modal = styled.div`
height: 100px;
`
export default ModalPlace
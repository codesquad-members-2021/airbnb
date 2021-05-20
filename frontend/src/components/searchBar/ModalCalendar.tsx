import { Modal } from '../../style/BarStyle'
interface IType {
  modalType: string;
}
const ModalCalendar:React.FunctionComponent<IType> =({modalType}) =>{

  return (
    <>
      <Modal modalType={modalType}>하위</Modal>
    </>
  )
}

export default ModalCalendar;
import { Modal } from '../../../style/BarStyle'
interface IFeeType {
	modalType: string
}
const ModalFee: React.FunctionComponent<IFeeType> = ({ modalType }) => {
	return (
		<>
			<Modal modalType={modalType}>헬로</Modal>
		</>
	)
}

export default ModalFee

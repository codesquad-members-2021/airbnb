import { Modal } from '../../../style/BarStyle'
import useAxios from '../../../customHook/useAxios'
interface IFeeType {
	modalType: string
}
const ModalFee: React.FunctionComponent<IFeeType> = ({ modalType }) => {
	return (
		<>
			<Modal modalType={modalType}>
				헬로 <useAxios />
			</Modal>
		</>
	)
}

export default ModalFee

import { Modal } from '../../style/BarStyle';
import Calendar from './Calendar';
interface IType {
	modalType: string;
}
const ModalCalendar: React.FunctionComponent<IType> = ({ modalType }) => {
	return (
		<>
			<Modal modalType={modalType}>
				<Calendar />
				하이...
			</Modal>
		</>
	);
};

export default ModalCalendar;

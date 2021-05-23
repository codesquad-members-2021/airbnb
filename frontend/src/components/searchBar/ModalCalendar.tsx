import { Modal } from '../../style/BarStyle'
import Calendar from './Calendar'
import styled from 'styled-components'
interface IType {
	modalType: string
}

//calendar component로 간단하게 선언하고 배열 형태로 관리하기
// -> 렌더링할 해당월만 넘겨주면서 그에 해당하는 시작요일과 일수는 해당 캘린더에서 계산하여 렌더링.

//배열형태로 관리
//기본: m-1, m, m+1, m+2 (배열 길이는 항상 4를 유지하도록한다.)
// next_Btn 클릭: 배열의 마지막 요소 (m+2) 기준 +1하여 배열에 push, (m-1)은 shift()
// prev_Btn 클릭: 배열의 첫번째 요소 (m-1) 기준 -1하여 배열에 unshift, (m+2)는 pop()

const ModalCalendar: React.FunctionComponent<IType> = ({ modalType }) => {
	const today: Date = new Date()
	const currentMonth: number = today.getMonth() + 1
	const CalendarToRendar = new Array(4)

	return (
		<Modal className={'ModalClass'} modalType={modalType}>
			<FlexBox>
				<Calendar currentMonth={currentMonth - 1} />
				<Calendar currentMonth={currentMonth} />
				<Calendar currentMonth={currentMonth + 1} />
				<Calendar currentMonth={currentMonth + 2} />
			</FlexBox>
		</Modal>
	)
}
const FlexBox = styled.div`
	display: flex;
	position: absolute;
	left: -465px;
`
export default ModalCalendar

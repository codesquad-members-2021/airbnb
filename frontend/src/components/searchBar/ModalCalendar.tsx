import { useState, useEffect } from 'react'
import { Modal } from '../../style/BarStyle'
import Calendar from './Calendar'
import styled, { css } from 'styled-components'
interface ModalCalendarProps {
	modalType: string
}

interface IDate {
	transitionState: boolean
	btnClicked: number
	Xposition: number
}
//calendar component로 간단하게 선언하고 배열 형태로 관리하기
// -> 렌더링할 해당월만 넘겨주면서 그에 해당하는 시작요일과 일수는 해당 캘린더에서 계산하여 렌더링.

//배열형태로 관리
//기본: m-1, m, m+1, m+2 (배열 길이는 항상 4를 유지하도록한다.)
// next_Btn 클릭: 배열의 마지막 요소 (m+2) 기준 +1하여 배열에 push, (m-1)은 shift()
// prev_Btn 클릭: 배열의 첫번째 요소 (m-1) 기준 -1하여 배열에 unshift, (m+2)는 pop()

const ModalCalendar: React.FunctionComponent<ModalCalendarProps> = ({ modalType }) => {
	const today: Date = new Date()
	const currentMonth: number = today.getMonth() + 1
	const [transitionState, setTransition] = useState(false)
	const [Xposition, setXposition] = useState(-970)

	// const [Xposition, setXposition] = useState(0)
	const CalendarToRendar: number[] = [
		currentMonth - 2,
		currentMonth - 1,
		currentMonth,
		currentMonth + 1,
		currentMonth + 2,
		currentMonth + 3,
	]

	const [currentCalendar, setCalendar] = useState(CalendarToRendar)
	const [btnClicked, setBtnClick] = useState<number>(0)

	const handlePrevMonth = (num: number): void => {
		setBtnClick(num)
		setTransition(true)
	}
	const handleMonth = (num: number): void => {
		setBtnClick(num)
		setTransition(true)
	}

	const handleTransitionEnd = (btnClicked: number): void => {
		setTransition(false)
		setBtnClick(0)
		if (btnClicked === 1) {
			setCalendar((currentCalendar) => [
				...currentCalendar.slice(2),
				currentCalendar[currentCalendar.length - 1] + 1,
				currentCalendar[currentCalendar.length - 1] + 2,
			])
			setXposition(-1000)
		} else if (btnClicked === -1) {
			setCalendar((currentCalendar) => {
				return [
					currentCalendar[0] - 2,
					currentCalendar[0] - 1,
					...currentCalendar.slice(0, currentCalendar.length - 2),
				]
			})
		}
	}

	return (
		<Modal modalType={modalType}>
			<BtnBox>
				<BtnFlexBox>
					<PrevBtn onClick={() => handleMonth(-1)}>
						<img src={process.env.PUBLIC_URL + '/prevBtn.png'} alt={'prevBtn'} />
					</PrevBtn>
					<NextBtn onClick={() => handleMonth(1)}>
						<img src={process.env.PUBLIC_URL + '/nextBtn.png'} alt={'nextBtn'} />
					</NextBtn>
				</BtnFlexBox>
			</BtnBox>
			<FlexBox
				Xposition={Xposition}
				transitionState={transitionState}
				onTransitionEnd={() => handleTransitionEnd(btnClicked)}
				btnClicked={btnClicked}
			>
				{currentCalendar.map((cal, idx) => (
					<Calendar key={idx} currentMonth={cal} />
				))}
			</FlexBox>
		</Modal>
	)
}
const PrevBtn = styled.div`
	z-index: 9999;
`
const NextBtn = styled.div`
	z-index: 9999;
`
const BtnFlexBox = styled.div`
	display: flex;
	justify-content: space-between;
	padding: 0 120px;
`
const BtnBox = styled.div`
	position: relative;
	top: 90px;
`
const FlexBox = styled.div<IDate>`
	display: flex;
	position: absolute;
	left: -970px;
	${(props) =>
		props.transitionState &&
		props.btnClicked === 1 &&
		css`
			transform: translateX(${props.Xposition - 30}px);
			transition: transform 1s;
		`};
`
export default ModalCalendar

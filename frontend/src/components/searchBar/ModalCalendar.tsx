import { useState, useEffect } from 'react'
import {
	checkInMessage,
	checkOutMessage,
	setCheckInMessage,
	setCheckOutMessage,
} from '../../customHook/atoms'
import { useRecoilValue, useRecoilState } from 'recoil'
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
let i = 0
let prev: null | number = null
const ModalCalendar: React.FunctionComponent<ModalCalendarProps> = ({ modalType }) => {
	const today: Date = new Date()
	const currentMonth: number = today.getMonth() + 1
	const [transitionState, setTransition] = useState(false)
	const [Xposition, setXposition] = useState(-970)

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

	// const [clicked, setClick] = useState(false) //회색글자 click state
	const [activation, setActivation] = useState(false) //회색글자가 아닐 때만 handle함수를 호출하기 위해. state

	//handleClick 안에서 사용하기
	const [checkIn, setCheckIn] = useRecoilState(checkInMessage)
	const [checkOut, setCheckOut] = useRecoilState(checkOutMessage)

	const handleDateCLick = (year?: number, currentMonth?: number, dateEl?: number | null): void => {
		if (!activation) return

		const clickedDate = new Date(`${year}-${currentMonth}-${dateEl}`).valueOf()
		if (checkIn === '날짜입력') setCheckIn(clickedDate)
		if (checkIn !== '날짜입력' && checkIn <= clickedDate) setCheckOut(clickedDate)
		if (checkIn !== '날짜입력' && checkIn > clickedDate) setCheckIn(clickedDate)
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

			<TransitionBox
				Xposition={Xposition}
				transitionState={transitionState}
				onTransitionEnd={() => handleTransitionEnd(btnClicked)}
				btnClicked={btnClicked}
			>
				{currentCalendar.map((cal, idx) => (
					<Calendar
						key={idx}
						currentMonth={cal}
						handleDateCLick={handleDateCLick}
						setActivation={setActivation}
					/>
				))}
			</TransitionBox>
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

const TransitionBox = styled.div<IDate>`
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
	${(props) =>
		props.transitionState &&
		props.btnClicked === -1 &&
		css`
			transform: translateX(${-props.Xposition + 60}px);
			transition: transform 1s;
		`};
`
export default ModalCalendar

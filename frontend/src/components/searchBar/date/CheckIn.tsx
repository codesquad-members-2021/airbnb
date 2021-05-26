import { RefObject } from 'react'
import { useRecoilValue } from 'recoil'
import { checkInMessage } from '../../../customHook/atoms'
import { BarBlock, BarInnerWrapper, BarTitle, BarMessage } from '../../../style/BarStyle'

interface IProps {
	clicked: boolean
	open: boolean
	type: string
	checkInToggle: RefObject<HTMLDivElement>
	onClick: () => void
}

const CheckIn: React.FunctionComponent<IProps> = ({ clicked, open, type, checkInToggle }) => {
	const checkIn = useRecoilValue(checkInMessage)
	const dateToString = (clickedDate: string | number) => {
		if (clickedDate === '날짜입력') return '날짜입력'
		const dateValue = Number(clickedDate)
		return new Date(dateValue).getMonth() + 1 + '월' + new Date(dateValue).getDate() + '일'
	}
	return (
		<BarBlock clicked={clicked && open} type={type} ref={checkInToggle}>
			<BarInnerWrapper>
				<div>
					<BarTitle>체크인</BarTitle>
					<BarMessage>{dateToString(checkIn)}</BarMessage>
				</div>
			</BarInnerWrapper>
		</BarBlock>
	)
}

export default CheckIn

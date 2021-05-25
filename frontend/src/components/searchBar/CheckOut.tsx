import { RefObject } from 'react'
import { useRecoilValue } from 'recoil'
import { checkOutMessage } from '../../customHook/atoms'
import { BarBlock, BarInnerWrapper, BarTitle, BarMessage } from '../../style/BarStyle'

interface IProps {
	clicked: boolean
	open: boolean
	type: string
	checkOutToggle: RefObject<HTMLDivElement>
	onClick: () => void
}

const CheckOut: React.FunctionComponent<IProps> = ({ clicked, open, type, checkOutToggle }) => {
	const checkOut = useRecoilValue(checkOutMessage)
	const dateToString = (clickedDate: string | number) => {
		if (clickedDate === '날짜입력') return '날짜입력'
		const dateValue = Number(clickedDate)
		return new Date(dateValue).getMonth() + 1 + '월' + new Date(dateValue).getDate() + '일'
	}
	return (
		<BarBlock clicked={clicked && open} type={type} ref={checkOutToggle}>
			<BarInnerWrapper>
				<div>
					<BarTitle>체크아웃</BarTitle>
					<BarMessage>{dateToString(checkOut)}</BarMessage>
				</div>
			</BarInnerWrapper>
		</BarBlock>
	)
}

export default CheckOut

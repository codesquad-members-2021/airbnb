import { RefObject } from 'react'
import { useRecoilState, useRecoilValue } from 'recoil'
import { checkInMessage } from '../../customHook/atoms'
import { BarBlock, BarInnerWrapper, BarTitle, BarMessage } from '../../style/BarStyle'

interface IProps {
	clicked: boolean
	open: boolean
	type: string
	checkInToggle: RefObject<HTMLDivElement>
	onClick: () => void
}

const CheckIn: React.FunctionComponent<IProps> = ({ clicked, open, type, checkInToggle }) => {
	const checkIn = useRecoilValue(checkInMessage)

	return (
		<BarBlock clicked={clicked && open} type={type} ref={checkInToggle}>
			<BarInnerWrapper>
				<div>
					<BarTitle>체크인</BarTitle>
					<BarMessage>{checkIn}</BarMessage>
				</div>
			</BarInnerWrapper>
		</BarBlock>
	)
}

export default CheckIn

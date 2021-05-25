import { RefObject } from 'react'
import { useRecoilState, useRecoilValue } from 'recoil'
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
	const [checkOut] = useRecoilState(checkOutMessage)
	return (
		<BarBlock clicked={clicked && open} type={type} ref={checkOutToggle}>
			<BarInnerWrapper>
				<div>
					<BarTitle>체크아웃</BarTitle>
					<BarMessage>{checkOut}</BarMessage>
				</div>
			</BarInnerWrapper>
		</BarBlock>
	)
}

export default CheckOut

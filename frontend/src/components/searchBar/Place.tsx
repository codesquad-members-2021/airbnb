import { useState, useRef, useEffect } from 'react'
import {
	PlaceSection,
	ModalWrapper,
	BarBlock,
	BarInnerWrapper,
	BarTitle,
	BarMessage,
} from '../../style/BarStyle'
import { TiDelete } from 'react-icons/ti'
import IconButton from '@material-ui/core/IconButton'
import useModalCtrl from '../../customHook/useModalCtrlArray'
import ModalPlace from './ModalPlace'

const Place = () => {
	const PlaceToggle = useRef<HTMLDivElement>(null)
	const PlaceModal = useRef<HTMLDivElement>(null)
	const open = useModalCtrl({
		toggle: [PlaceToggle],
		modal: PlaceModal,
		init: false,
	})

	const defaultMsg = '어디로 여행가세요?'
	const [targetPlace, setTargetPlace] = useState<string>(defaultMsg)
	const [viewX, setViewX] = useState(false)
	const [clicked, setClicked] = useState(false)
	const handleClick = () => {
		setClicked((clicked) => {
			if (!open) return true
			return !clicked
		})
	}
	const X_handleClick = () => {
		setTargetPlace(defaultMsg)
	}

	useEffect(() => {
		targetPlace && targetPlace !== defaultMsg ? setViewX(true) : setViewX(false)
	}, [targetPlace])

	return (
		<PlaceSection>
			<BarBlock clicked={clicked && open} onClick={handleClick} ref={PlaceToggle}>
				<BarInnerWrapper>
					<div>
						<BarTitle>위치</BarTitle>
						<BarMessage>{targetPlace}</BarMessage>
					</div>
					{viewX && (
						<IconButton onClick={X_handleClick}>
							<TiDelete />
						</IconButton>
					)}
				</BarInnerWrapper>
			</BarBlock>
			{open && (
				<ModalWrapper ref={PlaceModal} modalType='place'>
					<ModalPlace modalType='place' {...{ setTargetPlace, defaultMsg }} />
				</ModalWrapper>
			)}
		</PlaceSection>
	)
}

export default Place

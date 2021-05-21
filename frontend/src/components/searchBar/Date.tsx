import { useState, useRef, useEffect } from 'react';
import styled from 'styled-components';
import { PlaceSection, ModalWrapper } from '../../style/BarStyle';
import useModalCtrl from '../../customHook/useModalCtrlArray';
import ModalCalendar from './ModalCalendar';
import CheckIn from './CheckIn';
import CheckOut from './CheckOut';
const Date = () => {
	const checkInToggle = useRef<HTMLDivElement>(null);
	const checkOutToggle = useRef<HTMLDivElement>(null);
	const CalendarModal = useRef<HTMLDivElement>(null);
	const open = useModalCtrl({
		toggle: [checkInToggle, checkOutToggle],
		modal: CalendarModal,
		init: false,
	});

	const [IN_clicked, IN_setClick] = useState(false);
	const [OUT_clicked, OUT_setClick] = useState(false);
	const IN_handleClick = () => {
		IN_setClick((IN_clicked) => !IN_clicked);
	};
	const OUT_handleClick = () => {
		console.log('?');
		OUT_setClick((OUT_clicked) => !OUT_clicked);
	};

	return (
		<PlaceSection>
			<DateFlexWrapper>
				<CheckIn
					onClick={IN_handleClick}
					clicked={IN_clicked}
					open={open}
					type='date'
					checkInToggle={checkInToggle}
				/>
				<CheckOut
					onClick={OUT_handleClick}
					clicked={OUT_clicked}
					open={open}
					type='date'
					checkOutToggle={checkOutToggle}
				/>
			</DateFlexWrapper>
			{open && (
				<ModalWrapper ref={CalendarModal} modalType='date'>
					<ModalCalendar modalType='date' />
				</ModalWrapper>
			)}
		</PlaceSection>
	);
};

const DateFlexWrapper = styled.div`
	display: flex;
`;

export default Date;

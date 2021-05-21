import { RefObject, useState } from 'react';
import {
	PlaceSection,
	ModalWrapper,
	BarBlock,
	BarInnerWrapper,
	BarTitle,
	BarMessage,
} from '../../style/BarStyle';

interface IProps {
	clicked: boolean;
	open: boolean;
	type: string;
	checkOutToggle: RefObject<HTMLDivElement>;
	onClick: () => void;
}

const CheckIn: React.FunctionComponent<IProps> = ({
	clicked,
	open,
	type,
	checkOutToggle,
}) => {
	return (
		<BarBlock clicked={clicked && open} type={type} ref={checkOutToggle}>
			<BarInnerWrapper>
				<div>
					<BarTitle>체크아웃</BarTitle>
					<BarMessage>날짜입력</BarMessage>
				</div>
			</BarInnerWrapper>
		</BarBlock>
	);
};

export default CheckIn;

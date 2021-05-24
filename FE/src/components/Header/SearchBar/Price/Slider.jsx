import { useState } from "react";
import styled from "styled-components";

const Slider = ({ value, setValue }) => {
	const [start, setStart] = useState();
	const [end, setEnd] = useState(value);
	const [isDown, setDown] = useState(false);

	const mouseDonwHandler = ({ clientX }) => {
		setDown(true);
		setStart(() => clientX);
	};
	const mouseMoveHandler = ({ clientX }) => {
		if (isDown) setValue(() => clientX - start + end);
	};
	const mouseUpHandler = () => {
		setEnd(() => value);
		setDown(false);
	};

	return (
		<SliderWrapper
			value={value}
			onMouseDown={mouseDonwHandler}
			onMouseMove={mouseMoveHandler}
			onMouseUp={mouseUpHandler}
			onMouseLeave={mouseUpHandler}
		>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path
					d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z"
					fill="white"
					stroke="#333333"
					strokeLinecap="round"
					strokeLinejoin="round"
				/>
				<path d="M10 15V9" stroke="#333333" strokeLinecap="round" strokeLinejoin="round" />
				<path d="M14 15V9" stroke="#333333" strokeLinecap="round" strokeLinejoin="round" />
			</svg>
		</SliderWrapper>
	);
};

const SliderWrapper = styled.div.attrs(({ value }) => ({
	style: { transform: `translateX(${value}px)` },
}))`
	position: absolute;
	bottom: 0px;
	z-index: 2;
`;

export default Slider;

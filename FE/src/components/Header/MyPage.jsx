// import { useState } from "react";
import styled from "styled-components";

const MyPage = () => {
	// const [isOn, setOn] = useState(false);
	// const [isLogin, setLogin] = useState(false);
	return (
		<MyPageWrapper>
			<Hamburger />
			<Bust />
		</MyPageWrapper>
	);
};

const Hamburger = () => (
	<HamburgerWrapper>
		<svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path d="M2 8H14" stroke="#4F4F4F" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
			<path d="M2 4H14" stroke="#4F4F4F" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
			<path d="M2 12H14" stroke="#4F4F4F" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
		</svg>
	</HamburgerWrapper>
);

const Bust = () => (
	<BustWrapper>
		<svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path
				d="M13.3333 14V12.6667C13.3333 11.9594 13.0523 11.2811 12.5522 10.781C12.0521 10.281 11.3739 10 10.6666 10H5.33329C4.62605 10 3.94777 10.281 3.44767 10.781C2.94758 11.2811 2.66663 11.9594 2.66663 12.6667V14"
				stroke="white"
				strokeWidth="2"
				strokeLinecap="round"
				strokeLinejoin="round"
			/>
			<path
				d="M8.00004 7.33333C9.4728 7.33333 10.6667 6.13943 10.6667 4.66667C10.6667 3.19391 9.4728 2 8.00004 2C6.52728 2 5.33337 3.19391 5.33337 4.66667C5.33337 6.13943 6.52728 7.33333 8.00004 7.33333Z"
				stroke="white"
				strokeWidth="2"
				strokeLinecap="round"
				strokeLinejoin="round"
			/>
		</svg>
	</BustWrapper>
);

const MyPageWrapper = styled.div`
	position: absolute;
	top: 27px;
	left: 1284px;
	width: 76px;
	height: 40px;

	display: flex;
	align-items: center;

	background: #ffffff;
	border: 1px solid #bdbdbd;
	box-sizing: border-box;
	border-radius: 30px;
`;
const HamburgerWrapper = styled.div`
	position: absolute;
	width: 16px;
	height: 16px;
	top: 12px;
	left: 16px;
`;
const BustWrapper = styled.div`
	position: absolute;
	width: 32px;
	height: 32px;
	left: 40px;
	top: 4px;
	display: flex;
	justify-content: center;
	align-items: center;
	background: #828282;
	border-radius: 30px;
`;

export default MyPage;

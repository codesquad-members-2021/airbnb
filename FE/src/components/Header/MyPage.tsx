import { useEffect, useState, useRef } from "react";
import styled from "styled-components";

interface IUserInfo {
	name: string;
	email: string;
	userId: string;
	token: string;
}

const MyPage = () => {
	const [isOn, setOn] = useState(Boolean(window.location.search));
	const [userInfo, setUserInfo] = useState<IUserInfo | null>(null);
	const currentDOM = useRef<HTMLDivElement>(null);

	useEffect(() => {
		if (userInfo) return;
		const code = window.location.search;
		if (code) {
			fetch(`http://3.37.76.224:8080/login?code=${code.replace("?code=", "")}&typeCode=1`, { method: "POST" })
				.then((res) => res.json())
				.then((json) => setUserInfo(() => json))
				.catch((res) => console.error("fetch error in login : ", res));
		}
	}, [userInfo]);

	useEffect(() => {
		const blur = ({ target }: MouseEvent) => !currentDOM.current?.contains(target as HTMLDivElement) && setOn(false);
		document.addEventListener("click", blur);
		return () => document.removeEventListener("click", blur);
	});

	return (
		<MyPageWrapper ref={currentDOM} onClick={() => setOn(true)}>
			<Hamburger />
			<Bust />
			{isOn && <MyPageModal userInfo={userInfo} />}
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

const MyPageModal = ({ userInfo }: { userInfo: IUserInfo | null }) => {
	const targetURL = "http://3.37.76.224"; // for deploy
	// const targetURL = "http://localhost:3000"; // for dev
	return (
		<MyPageModalWrapper>
			{userInfo ? (
				<>
					<ModalContent>{userInfo.email?.split("@")[0]}님</ModalContent>
					<Line />
					<ModalContent>예약 취소</ModalContent>
					<Line />
					<ModalContent>위시리스트</ModalContent>
					<Line />
					<ModalContent>
						<a href={targetURL}>로그아웃</a>
					</ModalContent>
				</>
			) : (
				<ModalContent>
					<a href={`https://github.com/login/oauth/authorize?client_id=830ef6707e92703260eb&scope=user&redirect_uri=${targetURL}`}>
						로그인
					</a>
				</ModalContent>
			)}
		</MyPageModalWrapper>
	);
};

const MyPageWrapper = styled.div`
	position: relative;
	margin-top: 27px;
	margin-right: 80px;
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
const MyPageModalWrapper = styled.div`
	position: absolute;
	right: 0px;
	top: 48px;
	padding: 32px;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;

	background: #fff;
	box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
	border-radius: 10px;
	z-index: 2;
`;
const ModalContent = styled.div`
	width: 136px;
	height: 23px;
	font-size: 16px;
	line-height: 23px;
	text-decoration: none;
	display: flex;
	align-items: center;
	color: #010101;
	a {
		font-size: 16px;
		line-height: 23px;
		text-decoration: none;
		color: #010101;
	}
`;
const Line = styled.div`
	width: 136px;
	height: 1px;
	margin-top: 16px;
	margin-bottom: 16px;

	background: #c4c4c4;
`;

export default MyPage;

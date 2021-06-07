import styled from "styled-components";
import { ResultContext } from "config/ResultContextProvider";
import Header from "./Header/Header";
import Footer from "./Footer/Footer";
import Main from "./Main/Main";
import Result from "./Result/Result";
import Modal from "./Result/Modal";
import { useContext } from "react";

const Root = () => {
	const { isResultOn, isSearching, isModalOn } = useContext(ResultContext);
	return (
		<>
			<Header />
			{isResultOn ? (
				<ResultWrapper isSearching={isSearching}>
					<Result />
				</ResultWrapper>
			) : (
				<MainWrapper>
					<HeroImg />
					<Main />
					<Footer />
				</MainWrapper>
			)}
			{isModalOn && <Modal />}
		</>
	);
};

const MainWrapper = styled.div`
	position: absolute;
	top: 0px;
`;
const ResultWrapper = styled.div<{ isSearching: boolean }>`
	position: absolute;
	width: 100%;
	top: ${({ isSearching }) => (isSearching ? "192px" : "94px")};
	transform: translateX(-50%);
	background: #fff;
`;
const HeroImg = styled.div`
	position: absolute;
	width: 1440px;
	height: 640px;
	left: 0px;
	top: 0px;

	background: url("https://a0.muscache.com/im/pictures/4602a952-afa0-46a6-b08a-24e67e958309.jpg?im_w=720");
	background-size: cover;
`;

export default Root;

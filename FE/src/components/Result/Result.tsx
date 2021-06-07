import { useContext } from "react";
import styled from "styled-components";
import { ResultContext } from "config/ResultContextProvider";
import Houses from "./Houses/Houses";
import Map from "./Map";

const Result = () => {
	const { isModalOn } = useContext(ResultContext);
	return (
		<ResultWrapper isModalOn={isModalOn}>
			<Houses />
			<Map />
		</ResultWrapper>
	);
};

const ResultWrapper = styled.div<{ isModalOn: boolean }>`
	display: flex;
	width: 100%;
	height: 1000px;
	filter: ${({ isModalOn }) => (isModalOn ? "brightness(60%)" : "")};
	background: #fff;
`;

export default Result;

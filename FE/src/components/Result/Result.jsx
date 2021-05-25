import { useContext } from "react";
import styled from "styled-components";
import { ResultContext } from "../../config/ResultContextProvider";
import Houses from "./Houses/Houses";

const Result = () => {
	const { isModalOn } = useContext(ResultContext);
	return (
		<ResultWrapper isModalOn={isModalOn}>
			<Houses />
		</ResultWrapper>
	);
};

const ResultWrapper = styled.div`
	width: 100%;
	filter: ${({ isModalOn }) => (isModalOn ? "brightness(60%)" : "")};
	background: #fff;
`;

export default Result;

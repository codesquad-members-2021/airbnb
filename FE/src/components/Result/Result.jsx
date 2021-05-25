import styled from "styled-components";
import Houses from "./Houses";

const Result = () => (
	<ResultWrapper>
		<Houses />
	</ResultWrapper>
);

const ResultWrapper = styled.div`
	width: 100%;
`;

export default Result;

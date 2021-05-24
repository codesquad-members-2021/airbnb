import styled from "styled-components";
import NearTravel from "./NearTravel";
import AnyWhere from "./AnyWhere";

const Main = () => (
	<MainWrapper>
		<NearTravel />
		<AnyWhere />
	</MainWrapper>
);

const MainWrapper = styled.div`
	position: absolute;
	width: 1440px;
	top: 640px;

	display: flex;
	flex-direction: column;
	align-items: center;
`;

export default Main;

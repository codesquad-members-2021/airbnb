import styled from "styled-components";
import { EmptyInterface } from "./../../../utils/interfaces";

export default function Tour(props: EmptyInterface) {
	return (
		<>
			<StyleList>
				<li>숙소</li>
				<li>체험</li>
				<li>온라인 체험</li>
			</StyleList>
		</>
	);
}

export const StyleList = styled.ul`
	display: flex;
	justify-content: space-around;
	li {
		cursor: pointer;
	}
`;

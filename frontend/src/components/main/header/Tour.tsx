import styled from "styled-components";

export interface IAppProps {}

export default function Tour(props: IAppProps) {
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

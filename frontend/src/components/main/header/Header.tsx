import styled from "styled-components";
import Logo from "./Logo";
import SideContainer from "./side_menu/SideContainer";
import Tour from "./Tour";

export interface IAppProps {}

export default function Header(props: IAppProps) {
	return (
		<StyleHeader>
			<Logo />
			<Tour />
			<SideContainer />
		</StyleHeader>
	);
}

const StyleHeader = styled.div`
	display: grid;
	grid-template-columns: 1fr 0.5fr 1fr;
`;

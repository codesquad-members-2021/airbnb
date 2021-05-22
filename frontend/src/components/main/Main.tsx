import SearchBar from "./../search_bar/SearchBar";
import { EmptyInterface } from "./../../utils/interfaces";
import styled from 'styled-components';

export default function Main(props: EmptyInterface) {
	return (
		<StyleMain>
			<SearchBar />
		</StyleMain>
	);
}

const StyleMain = styled.div`
	display: flex;
	justify-content: center;
	align-items: center;
`

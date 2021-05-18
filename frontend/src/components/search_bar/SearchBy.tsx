import styled from "styled-components";

export interface IAppProps {
	type: string;
	input?: string;
	isEnd: boolean;
	placeholder?: string;
}

export default function SearchBy({ type, input, isEnd, placeholder }: IAppProps) {
	return (
		<StyleSearch>
			{type}
			{input && <input placeholder={input}></input>}
			{placeholder && <div>{placeholder}</div>}
		</StyleSearch>
	);
}

const StyleSearch = styled.button`
	font-family: "Noto Sans KR", sans-serif;
	width: 20em;
	display: flex;
	flex-direction: column;
	justify-content: center;
	height: 100%;
	border-radius: 60px;
	background-color: #ffffff;
	:hover {
		background-color: #e0e0e0;
	}
`;

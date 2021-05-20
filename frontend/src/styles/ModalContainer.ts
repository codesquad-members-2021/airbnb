import styled from "styled-components";

const ModalContainer = styled.div<{ type: string }>`
	position: absolute;
	// type 에 따라 left, top, width, height 값 다르게 주면 될듯.
	left: 200px;
	top: 300px;
	width: 400px;
	height: 400px;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 40px;
	background-color: #ffffff;
	box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
`;

export default ModalContainer;

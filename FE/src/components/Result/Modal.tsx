import { useContext, useEffect, useRef } from "react";
import styled from "styled-components";
import ModalInfo from "./ModalInfo";
import ModalCost from "./ModalCost";
import { ResultContext } from "config/ResultContextProvider";

const Modal = () => {
	const { setModalOn } = useContext(ResultContext);
	const currentDOM = useRef<HTMLDivElement>(null);

	useEffect(() => {
		const blur = ({ target }: MouseEvent) => !currentDOM.current?.contains(target as HTMLDivElement) && setModalOn(false);
		document.addEventListener("click", blur);
		return () => document.removeEventListener("click", blur);
	});

	return (
		<ModalWrapper ref={currentDOM}>
			<ModalInfo />
			<Button>예약하기</Button>
			<Caption>예약 확정 전에는 요금이 청구되지 않습니다.</Caption>
			<ModalCost />
		</ModalWrapper>
	);
};

const ModalWrapper = styled.div`
	position: fixed;
	width: 400px;
	height: 542px;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background: #ffffff;
	box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
	border-radius: 10px;
`;
const Button = styled.button`
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 16px;
	position: absolute;
	width: 352px;
	height: 55px;
	left: 24px;
	top: 200px;
	font-weight: bold;
	font-size: 16px;
	line-height: 23px;
	color: #fff;
	background: #333333;
	border-radius: 10px;
`;
const Caption = styled.div`
	position: absolute;
	width: 320px;
	height: 17px;
	left: 41px;
	top: 271px;
	text-align: center;
	font-size: 12px;
	line-height: 17px;
	color: #4f4f4f;
`;
export default Modal;

import { useContext } from "react";
import styled from "styled-components";
import { SearchBarContext } from "config/SearchBarContextProvider";

const ModalInfo = () => {
	const { start, end, man, kid, baby } = useContext(SearchBarContext);
	return (
		<InfoWrapper>
			<Period>
				<Title>체크인</Title>
				<Body>{start}</Body>
			</Period>
			<Period>
				<Title>체크아웃</Title>
				<Body>{end}</Body>
			</Period>
			<Personnel>
				<Title>인원</Title>
				<Body>{`게스트 ${man + kid}명 ${baby ? `유아 ${baby}명` : ""}`}</Body>
			</Personnel>
		</InfoWrapper>
	);
};

const InfoWrapper = styled.div`
	display: flex;
	position: absolute;
	width: 353px;
	height: 107px;
	left: 24px;
	top: 77px;
	border: 1px solid #bdbdbd;
	box-sizing: border-box;
	border-radius: 10px;
`;
const Period = styled.div`
	position: relative;
	display: flex;
	flex-direction: column;
	align-items: flex-start;
	width: 176px;
	height: 53px;
	border-bottom: 1px solid #bdbdbd;
	& + & {
		border-left: 1px solid #bdbdbd;
	}
`;
const Personnel = styled.div`
	position: absolute;
	width: 352px;
	height: 53px;
	left: 0px;
	top: 54px;
`;
const Title = styled.div`
	position: absolute;
	left: 16px;
	top: 8px;
	font-weight: bold;
	font-size: 12px;
	line-height: 17px;
	color: #010101;
`;
const Body = styled.div`
	position: absolute;
	left: 16px;
	top: 25px;
	font-size: 14px;
	line-height: 20px;
	color: #4f4f4f;
`;

export default ModalInfo;

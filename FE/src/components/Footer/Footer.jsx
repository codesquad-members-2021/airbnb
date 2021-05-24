import { useContext } from "react";
import styled from "styled-components";
import { MainContext } from "../../config/MainContextProvider";
import { footerData, FNBData } from "../../json/data.json";

const Footer = () => {
	const { isResult } = useContext(MainContext);
	return (
		<FooterWrapper isResult={isResult}>
			{footerData.map((el) => (
				<FooterContent key={el} body={el} />
			))}
			<Line />
			<FNB />
		</FooterWrapper>
	);
};

const FooterContent = ({ body }) => (
	<FooterContentWrapper>
		{body.map((el, i) => (
			<FooterContentMenu key={i}>{el}</FooterContentMenu>
		))}
	</FooterContentWrapper>
);

const FNB = () => (
	<FNBWrapper>
		{FNBData.map((el, i) => (
			<FNBContent key={i}>{el}</FNBContent>
		))}
	</FNBWrapper>
);

const FooterWrapper = styled.div`
	position: absolute;
	width: ${({ isResult }) => (isResult ? "100%" : "1440px")};
	height: 629px;
	top: 1495px;
	left: ${({ isResult }) => (isResult ? "0px" : "")};

	display: flex;
	justify-content: center;

	background: #f5f5f7;
	margin-top: 80px;
	color: #333;
`;
const FooterContentWrapper = styled.ul`
	width: 304px;
	height: 413px;
	margin-top: 80px;
	& + & {
		margin-left: 20px;
	}
`;
const FooterContentMenu = styled.li`
	font-size: 16px;
	line-height: 23px;

	margin-bottom: 16px;
	&:nth-child(1) {
		font-weight: bold;
	}
`;
const Line = styled.div`
	position: absolute;
	width: 1280px;
	height: 1px;
	left: 80px;
	top: 541px;

	background: #e0e0e0;
`;
const FNBWrapper = styled.div`
	position: absolute;
	width: 837px;
	height: 23px;
	left: 80px;
	top: 574px;
	display: flex;
	align-items: center;
`;
const FNBContent = styled.div`
	font-size: 16px;
	line-height: 23px;
	color: #333333;
	& + & {
		margin-left: 16px;
	}
	&:nth-child(2n) {
		font-size: 10px;
		line-height: 14px;
	}
`;

export default Footer;

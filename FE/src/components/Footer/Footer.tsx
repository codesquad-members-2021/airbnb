import styled from "styled-components";
import { footerData, FNBData } from "json/data.json";

//prettier-ignore
const Footer = (): JSX.Element => {
	return (
		<FooterWrapper>
			{footerData.map((el) => <FooterContent key={el[0]} body={el} />)}
			<Line />
			<FNB />
		</FooterWrapper>
	);
};

interface ContentProps {
	body: string[];
}
//prettier-ignore
const FooterContent = ({ body }: ContentProps): JSX.Element => (
	<FooterContentWrapper>
		{body.map((el, i) => <FooterContentMenu key={i}>{el}</FooterContentMenu>)}
	</FooterContentWrapper>
);
//prettier-ignore
const FNB = (): JSX.Element => (
	<FNBWrapper>
		{FNBData.map((el, i) => <FNBContent key={i}>{el}</FNBContent> )}
	</FNBWrapper>
);

const FooterWrapper = styled.div`
	position: absolute;
	width: 1440px;
	height: 629px;
	top: 1495px;

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

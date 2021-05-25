import styled from "styled-components";
import { anywhereData } from "../../json/data.json";

//prettier-ignore
const AnyWhere = () => (
	<AnyWhereWrapper>
		<AnyWhereTitle>어디서나, 여행은 살아보는 거야!</AnyWhereTitle>
		{anywhereData.map((el) => <Content {...el} key={el.title} />)}
	</AnyWhereWrapper>
);

const Content = ({ title, src }) => (
	<ContentWrapper>
		<ContentImage src={src} />
		<ContentTitle>{title}</ContentTitle>
	</ContentWrapper>
);

const AnyWhereWrapper = styled.div`
	position: relative;
	margin-top: 80px;

	width: 1280px;
	height: 431px;

	display: flex;
	justify-content: space-between;
	align-items: flex-end;
`;
const AnyWhereTitle = styled.div`
	position: absolute;
	top: 0px;
	font-size: 32px;
	line-height: 46px;
	color: #333;
`;
const ContentWrapper = styled.div`
	position: relative;
	width: 308px;
	height: 353px;
`;
const ContentImage = styled.img`
	width: 308px;
	height: 308px;
	border-radius: 10px;
`;
const ContentTitle = styled.div`
	font-size: 20px;
	line-height: 29px;
	color: #333;
	margin-top: 16px;
`;

export default AnyWhere;

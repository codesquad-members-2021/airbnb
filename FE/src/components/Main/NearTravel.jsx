import styled from "styled-components";
import { nearTravelData } from "../../json/data.json";
//prettier-ignore
const NearTravel = () => (
	<NearTravelWrapper>
		<NearTravelTitle>가까운 여행지 둘러보기</NearTravelTitle>
		{nearTravelData.map((el) => <Content {...el} key={el.title} />)}
	</NearTravelWrapper>
);

const Content = ({ title, body, src }) => (
	<ContentWrapper>
		<ContentImage src={src} />
		<ContentTitle>{title}</ContentTitle>
		<ContentBody>{body}</ContentBody>
	</ContentWrapper>
);

const NearTravelWrapper = styled.div`
	position: relative;
	margin-top: 80px;

	width: 1280px;
	height: 264px;

	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
	align-content: flex-end;
`;
const NearTravelTitle = styled.div`
	position: absolute;
	top: 0px;
	font-size: 32px;
	line-height: 46px;
	color: #333;
`;
const ContentWrapper = styled.div`
	position: relative;
	width: 308px;
	height: 80px;
	margin-top: 24px;

	font-size: 18px;
	line-height: 26px;
	color: #333;
`;
const ContentImage = styled.img`
	width: 80px;
	height: 80px;
	border-radius: 10px;
`;
const ContentTitle = styled.div`
	position: absolute;
	top: 10px;
	left: 96px;
`;
const ContentBody = styled.div`
	position: absolute;
	top: 44px;
	left: 96px;
`;

export default NearTravel;

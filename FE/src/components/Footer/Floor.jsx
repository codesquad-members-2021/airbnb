import styled from "styled-components";

const floorData = [
	[
		"소개",
		"에어비엔비 이용 방법",
		"뉴스룸",
		"투자자 정보",
		"에어비앤비 플러스",
		"에어비앤비 Luxe",
		"호텔투나잇",
		"에어비앤비 비즈니스 프로그램",
		"호스트 분들이 있기에 가능합니다",
		"채용정보",
		"창립자 편지",
	],
	["커뮤니티", "다양성 및 소속감", "접근성", "에어비앤비 어소시에이트", "구호 인력을 위한 숙소", "게스트 추천", "Airbnb.org"],
	[
		"호스팅하기",
		"호스팅하기",
		"숙소 호스팅",
		"온라인 체험 호스팅하기",
		"체험 호스팅하기",
		"책임감 있는 호스팅",
		"호스트 추천",
		"자료 센터",
		"커뮤니티 센터",
	],
	[
		"에어비앤비 지원",
		"에어비앤비 지원",
		"에어비앤비의 코로나19 대응 방안",
		"도움말 센터",
		"예약 취소 옵션",
		"에어비앤비 이웃 인원 지원",
		"신뢰와 안전",
	],
];

const FNBData = [
	"© 2021 Airbnb, Inc.",
	"・",
	"개인정보처리방침",
	"・",
	"사이트맵",
	"・",
	"이용약관",
	"・",
	"한국의 변경된 환불 정책",
	"・",
	"회사 세부정보",
];
//prettier-ignore
const Floor = () => (
	<FloorWrapper>
		{floorData.map((el) => <FloorContent key={el} body={el} />)}
		<Line />
		<FNB />
	</FloorWrapper>
);

const FloorContent = ({ body }) => (
	<FloorContentWrapper>
		{body.map((el, i) => <FloorContentMenu key={i}>{el}</FloorContentMenu>)}
	</FloorContentWrapper>
);

const FNB = () => (
	<FNBWrapper>
		{FNBData.map((el, i) => <FNBContent key={i}>{el}</FNBContent>)}
	</FNBWrapper>
);

const FloorWrapper = styled.div`
	position: relative;
	width: 1440px;
	height: 629px;

	display: flex;
	justify-content: center;

	background: #f5f5f7;
	margin-top: 80px;
	color: #333;
`;
const FloorContentWrapper = styled.ul`
	width: 304px;
	height: 413px;
	margin-top: 80px;
	& + & {
		margin-left: 20px;
	}
`;
const FloorContentMenu = styled.li`
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

export default Floor;

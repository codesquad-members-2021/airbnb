import FooterCard from "./FooterCard/FooterCard";
import FooterBottom from "./FooterBottom";
import { Footer as S } from "@/Components/Main/MainStyles";

const Footer = () => {
  const footerCardList = [
    {
      title: "소개",
      lists: [
        "에어비앤비 이용 방법",
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
    },
    {
      title: "커뮤니티",
      lists: [
        "다양성 및 소속감",
        "접근성",
        "에어비앤비 어소시에이트",
        "구호 인력을 위한 숙소",
        "게스트 추천",
        "Airbnb.org",
      ],
    },
    {
      title: "호스팅하기",
      lists: [
        "호스팅하기",
        "숙소 호스팅",
        "온라인 체험 호스팅하기",
        "체험 호스팅하기",
        "책임감 있는 호스팅",
        "호스트 추천",
        "자료 센터",
        "커뮤니티 센터",
      ],
    },
    {
      title: "에어비앤비 지원",
      lists: [
        "에어비앤비 지원",
        "에어비앤비의 코로나 19 대응 방안",
        "도움말 센터",
        "예약 취소 옵션",
        "에어비앤비 이웃 민원 지원",
        "신뢰와 안전",
      ],
    },
  ];
  return (
    <S.Footer>
      <S.FooterCardWrapper>
        {footerCardList.map((card) => (
          <FooterCard card={card} />
        ))}
      </S.FooterCardWrapper>
      <FooterBottom />
    </S.Footer>
  );
};

export default Footer;

// ITextAll (IText & ITextContentInfo), 어디에도 쓰이진 않음
export interface ITextAll {
  [name: string]:
    | {
        subject: string;
        items: {
          name: string;
          distance?: string;
        }[];
      }
    | {
        [subName: string]: {
          subject: string;
          strItems: string[];
        };
      };
}
// -----------------------------------------------------

// [1] interface 정의
// MainPage: 상단 헤더 & 검색바
export interface ITextTopBackground {
  [headerOrSearchBar : string]: {
    menuItems: {
      text: string,
      placeHolder?: string,
    }[];
    logoOrBtnCaption: string;

    authStatus?: {
      noLogin: string[];
      login: string[];
    };
  };
}

// MainPage: 근처 & 객실 형태
export interface ITextNearbyRoomType {
  [name: string]: {
    subject: string;
    items: {
      name: string;
      distance?: string;
    }[];
  };
}

// MainPage: 하단의 사이트 맵
export interface ITextCotnentInfo {
  [name: string]: {
    [subName: string]: {
      subject: string;
      strItems: string[];
    };
  };
}

// MainPage: 하단의 사이트 관련 정보 (Footer)
export interface ITextFooter {
  [footerItems: string]: string[];
}

// -----------------------------------------------------

// [2] 내용 선언
export const TextTopBackground: ITextTopBackground = {
  headerTexts: {
    menuItems: [
      {text: '숙소'},
      {text: '체험'},
      {text: '온라인 체험'},
    ],
    logoOrBtnCaption: 'LOGO',
    authStatus: {
      noLogin: ['로그인'],
      login: ['예약 취소', '위시 리스트', '로그아웃'],
    },
  },

  searchBarTexts: {
    menuItems: [
      {text: '체크인|체크아웃', placeHolder: '날짜 입력'},
      {text: '요금', placeHolder: '금액대 설정'},
      {text: '인원', placeHolder: '게스트 추가'},
    ],
    logoOrBtnCaption: '검색', // 미사용
  }
};

export const Text: ITextNearbyRoomType = {
  nearby: {
    subject: '가까운 여행지 둘러보기',
    items: [
      { name: '서울', distance: '30분' },
      { name: '의정부시', distance: '30분' },
      { name: '대구', distance: '3.5시간' },
      { name: '대전', distance: '2시간' },
      { name: '광주', distance: '4시간' },
      { name: '수원시', distance: '45분' },
      { name: '울산', distance: '4.5시간' },
      { name: '부천시', distance: '45분' },
    ],
  },
  roomType: {
    subject: '어디서나 여행은 살아보는 거야!',
    items: [
      { name: '자연생활을 만끽할수 있는 숙소' },
      { name: '독특한 공간' },
      { name: '집 전체' },
      { name: '반려동물 동반 가능' },
    ],
  },
};

export const TextContentInfo: ITextCotnentInfo = {
  contentInfo: {
    introduce: {
      subject: '소개',
      strItems: [
        '에어비앤비 이용 방법',
        '뉴스룸',
        '투자자 정보',
        '에어비앤비 플러스',
        '에어비앤비 Luxe',
        '호텔투나잇',
        '에어비앤비 비즈니스 프로그램',
        '호스트 분들이 있기에 가능합니다',
        '채용정보',
        '창립자 편지',
      ],
    },
    community: {
      subject: '커뮤니티',
      strItems: [
        '다양성 및 소속감',
        '접근성',
        '에어비앤비 어소시에이트',
        '구호 인력을 위한 숙소',
        '게스트 추천',
        'Airbnb.org',
      ],
    },
    hosting: {
      subject: '호스팅하기',
      strItems: [
        '숙소 호스팅',
        '온라인 체험 호스팅하기',
        '체험 호스팅하기',
        '책임감 있는 호스팅',
        '자료 센터',
        '커뮤니티 센터',
      ],
    },
    support: {
      subject: '에어비앤비 지원',
      strItems: [
        '에어비앤비의 코로나19 대응 방안',
        '도움말 센터',
        '예약 취소 옵션',
        '에어비앤비 이웃 민원 지원',
        '신뢰와 안전',
      ],
    },
  },
};

export const TextFooter: ITextFooter = {
  footerItems: [
    '© 2021 Airbnb, Inc.',
    '개인정보처리방침',
    '이용약관',
    '한국의 변경된 환불 정책',
    '회사 세부정보',
  ],
};

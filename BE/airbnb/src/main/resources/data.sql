-- how DATABASES;
-- CREATE DATABASE airbnb;
use airbnb;

INSERT INTO accommodation(title, reviewRating, reviewCount, charge, badge, `options`,image,isLike, latitude,longitude)
values
('더 스위트 캐슬, 달콤한 휴식',4.92,55,75000,
 '청결한 위생','최대 인원2명ᆞ원룸ᆞ침대 1개ᆞ욕실 1개ᆞ주방ᆞ무선 인터넷ᆞ에어컨ᆞ헤어드라이어',
 'https://github.com/d-h-k/airbnb/blob/dev-BE/images/acmd/10.jpeg?raw=true',
 1,37.49094015897296, 127.03345991344452),

('교보문고 인접거리, 강남대로 중심 최고의 전망',4.25,165,96000,'슈퍼호스트',
 '최대 인원2명ᆞ원룸ᆞ침대 1개ᆞ욕실 1개ᆞ주방ᆞ무선 인터넷ᆞ에어컨ᆞ헤어드라이어',
 'https://github.com/d-h-k/airbnb/blob/dev-BE/images/acmd/12.jpeg?raw=true',
 1,37.1,127.1),

('스튜디오 오아시스 스위트(Studio Oasis Suite) 양재역 5분 거리',0,0,90190,'슈퍼호스트',
 '최대 인원3명ᆞ원룸ᆞ침대 1개ᆞ욕실 1개ᆞ주방ᆞ무선 인터넷ᆞ에어컨ᆞ헤어드라이어',
 'https://github.com/d-h-k/airbnb/blob/dev-BE/images/acmd/3.jpeg?raw=true',
 0,37.2,127.2),

('Private Comfy Studio - 2 Queen Beds',4.78,82,85220,'',
 '최대 인원2명ᆞ원룸ᆞ침대 1개ᆞ욕실 1개ᆞ주방ᆞ무선 인터넷ᆞ에어컨ᆞ헤어드라이어',
 'https://github.com/d-h-k/airbnb/blob/dev-BE/images/acmd/4.jpeg?raw=true',
 0,37.3,127.3),

('Kang-Nam_Cozy_Clean_Quiet',4.72, 82,66800,'슈퍼호스트',
 '최대 인원4명ᆞ원룸ᆞ침대 1개ᆞ욕실 1개ᆞ주방ᆞ무선 인터넷ᆞ에어컨ᆞ헤어드라이어',
 'https://github.com/d-h-k/airbnb/blob/dev-BE/images/acmd/5.jpeg?raw=true',
 0,37.4,127.4),

('NEW)강남역1분! 알콜소독! 영화&커피 Healing House/Movie&Coffee',5.0,22,79167,'청결강화',
 '최대 인원2명ᆞ원룸ᆞ침대 1개ᆞ욕실 1개ᆞ주방ᆞ무선 인터넷ᆞ에어컨ᆞ헤어드라이어',
 'https://github.com/d-h-k/airbnb/blob/dev-BE/images/acmd/6.jpeg?raw=true',
 0,37.5,127.5),

('강남,역삼역 15분 넓어요 자가격리불가능Gangnam St.15min wide spaceⅡ',4.67,51,53707,'',
 '최대 인원2명ᆞ원룸ᆞ침대 1개ᆞ욕실 1개ᆞ주방ᆞ무선 인터넷ᆞ에어컨ᆞ헤어드라이어',
 'https://github.com/d-h-k/airbnb/blob/dev-BE/images/acmd/7.jpeg?raw=true',
 0,37.6,127.6),

('3 Mins Gangnam STN *Twin Bed* 주차불가*',4.85,34,52567,'슈퍼호스트',
 '최대 인원2명ᆞ원룸ᆞ침대 1개ᆞ욕실 1개ᆞ주방ᆞ무선 인터넷ᆞ에어컨ᆞ헤어드라이어',
 'https://github.com/d-h-k/airbnb/blob/dev-BE/images/acmd/8.jpeg?raw=true',
 1,37.7,127.7);

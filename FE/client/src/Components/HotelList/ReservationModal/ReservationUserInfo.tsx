import React from 'react'
import styled from 'styled-components';
import { useRecoilValue } from 'recoil';
import { calendarClickAtom, userInfoSelector } from '@/recoil/atoms';
import { getFormattingDateFromTimeAllYear } from '@/utils/calendarUtil';

const ReservationUserInfo = () => {
  const [firstDayTime, LastDayTime] = useRecoilValue(calendarClickAtom);
  const { guest } = useRecoilValue(userInfoSelector);
  return (
    <>
      <UserInfoWrapper>
        <DateWrapper>
          <DateChecker>

            <div>체크인</div>
            {firstDayTime &&
              <div>{getFormattingDateFromTimeAllYear(firstDayTime)}</div>
            }

          </DateChecker>
          <DateChecker>
            <div>체크아웃</div>
            {LastDayTime &&
              <div>{getFormattingDateFromTimeAllYear(LastDayTime)}</div>
            }

          </DateChecker>
        </DateWrapper>
        <GuestCountWrapper>
          <div>인원</div>
          <div>{guest}</div>
        </GuestCountWrapper>
      </UserInfoWrapper>

      <ReservationButton>
        예약하기
      </ReservationButton>
      <ReservationDesc>
        예약 확정 전에는 요금이 청구되지 않습니다.
      </ReservationDesc>

    </>
  )
}
const UserInfoWrapper = styled.div`
  width: 353px;
  margin-bottom: 1rem;
  border: 1px solid #BDBDBD;
  border-radius: 10px;
`;

const DateWrapper = styled.div`
  display: flex;
  border-bottom: 1px solid #BDBDBD;
`;

const DateChecker = styled.div`
  padding: 10px;
  width:50%;
  & > div:first-child{
    font-weight:700;
  }
  & + &{
    border-left: 1px solid #BDBDBD;
  }
`;
const GuestCountWrapper = styled.div`
  padding: 10px;
  & > div:first-child{
    font-weight:700;
  }
`;

const ReservationButton = styled.button`
  height: 55px;
  width: 352px;
  padding: 1rem;
  margin-bottom: 1rem;
  background:#333333;
  font-weight:700;
  color: #fff;
  border-radius: 10px;
  &:hover {
    cursor:pointer;
  }
`;

const ReservationDesc = styled.div`
  margin-bottom: 1.5rem;
  font-size: 12px;
  color:#4F4F4F;
  text-align: center;
`;
export default ReservationUserInfo;

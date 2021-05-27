import styled from "styled-components";
import { useRecoilValue } from "recoil";
import { checkinDateState, checkoutDateState, hoverDateState } from "state/atoms/calendarAtoms";

interface Props {
  day: string;
  year: number;
  month: number;
  today: string;
}

function Day({ day, year, month, today }: Props) {
  const checkinDate = useRecoilValue(checkinDateState);
  const checkoutDate = useRecoilValue(checkoutDateState);
  const hoverDate = useRecoilValue(hoverDateState);

  const yearStr = `${year}`;
  const monthStr = month < 9 ? `0${month + 1}` : `${month + 1}`;
  const dayForDate = +day < 10 ? `0${day}` : `${day}`;
  const date = yearStr + monthStr + dayForDate;
  const isBetweenDate = +checkinDate < +date && +date < +hoverDate;
  const isSelected = checkinDate === date || checkoutDate === date;
  const isPast = +today > +date;

  return day === "" ? (
    <td></td>
  ) : (
    <DayTd className={isBetweenDate ? "between" : "dayTd"}>
      <DayDiv data-date={date} className={isSelected ? "dayDiv selected" : isPast ? "dayDiv pastDay" : "dayDiv"}>
        {day}
      </DayDiv>
    </DayTd>
  );
}

export default Day;

const DayTd = styled.td`
  width: 48px;
  height: 48px;
  &.between {
    background-color: ${({ theme }) => theme.color.gray6};
  }
`;

const DayDiv = styled.div`
  box-sizing: border-box;
  width: 46px;
  height: 46px;
  border: 1px solid transparent;
  border-radius: 50%;
  text-align: center;
  line-height: 48px;
  cursor: pointer;

  &.pastDay {
    color: ${({ theme }) => theme.color.gray4};
    cursor: default;
  }
  &:not(.pastDay):hover {
    border-color: ${({ theme }) => theme.color.black};
  }
  &.selected {
    background-color: ${({ theme }) => theme.color.black};
    color: #fff;
  }
`;

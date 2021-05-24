import React from "react";
import styled from "styled-components";

const days: string[] = ["일", "월", "화", "수", "목", "금", "토"];

const getWeekData = (dayCount: number, lastDay: number, firstDayName = 0): [number, string[]] => {
  const emptyWeek: null[] = new Array(7).fill(null);
  const week: string[] = emptyWeek.map((_, i) => {
    if (i < firstDayName || dayCount >= lastDay) return "";
    dayCount++;
    return `${dayCount}`;
  });
  return [dayCount, week];
};

const getCalendarData = (year: number, month: number): string[][] => {
  let weeksData: string[][] = [];
  const setFirstDate: Date = new Date(year, month - 1, 1);
  const setLastDate: Date = new Date(year, month, 0);
  const firstDayName: number = setFirstDate.getDay();
  const lastDay: number = setLastDate.getDate();

  let dayCount: number = 0;

  for (let i = 0; i < 6; i++) {
    if (dayCount === 0) {
      // 첫 주 배열 push
      const [count, firstWeek] = getWeekData(dayCount, lastDay, firstDayName);
      dayCount = count;
      weeksData.push(firstWeek);
    } else if (dayCount < lastDay) {
      // 나머지 주 배열 push
      const [count, restWeek] = getWeekData(dayCount, lastDay);
      dayCount = count;
      weeksData.push(restWeek);
    }
    if (dayCount >= lastDay) break;
  }
  return weeksData;
};

function Calendar() {
  return (
    <CalendarContainer>
      <CalendarTitle>2021년 5월</CalendarTitle>
      <CalendarTable>
        <thead>
          <tr>
            {days.map((day) => (
              <th>{day}</th>
            ))}
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td>2</td>
            <td>3</td>
            <td>4</td>
            <td>5</td>
            <td>6</td>
            <td>7</td>
          </tr>
          <tr>
            <td>8</td>
            <td>9</td>
            <td>10</td>
            <td>11</td>
            <td>12</td>
            <td>13</td>
            <td>14</td>
          </tr>
          <tr>
            <td>15</td>
            <td>16</td>
            <td>17</td>
            <td>18</td>
            <td>19</td>
            <td>20</td>
            <td>21</td>
          </tr>
          <tr>
            <td>22</td>
            <td>23</td>
            <td>24</td>
            <td>25</td>
            <td>26</td>
            <td>27</td>
            <td>28</td>
          </tr>
          <tr>
            <td>29</td>
            <td>30</td>
            <td>31</td>
            <td>32</td>
            <td>33</td>
            <td>34</td>
            <td>35</td>
          </tr>
        </tbody>
      </CalendarTable>
    </CalendarContainer>
  );
}

export default Calendar;

const CalendarContainer = styled.div`
  width: 336px;
  display: flex;
  flex-direction: column;
  align-items: center;
`;
const CalendarTitle = styled.div`
  margin-bottom: 24px;
  font-weight: bold;
`;
const CalendarTable = styled.table`
  th {
    width: 48px;
    height: 24px;
    font-size: 12px;
    color: ${({ theme }) => theme.color.gray3};
    line-height: 24px;
  }
  td {
    width: 48px;
    height: 48px;
    text-align: center;
    line-height: 48px;
  }
`;

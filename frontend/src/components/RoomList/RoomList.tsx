import styled from "styled-components";
import RoomData from "components/RoomList/RoomData.json";
import RoomCard from 'components/RoomList/RoomCard';

const RoomList = () => {
  const { room_list } = RoomData;

  return (
  <RoomListLayout>
    <div className="roomlist-info">300개 이상의 숙소, 5월 12일 ~ 5월 18일, 100,000 ~ 1,000,000, 게스트 3명</div>
    <div className="roomlist-title">지도에서 선택한 지역의 숙소</div>
    {room_list.map(room => <RoomCard key={room.id} roomInfo={room}/>)}
  </RoomListLayout>
)};

const RoomListLayout = styled.div`
  width: 50%;
  padding: 2rem;

  .roomlist-info {
    font-size: 1.2rem;
  }
  .roomlist-title {
    padding: 2rem 0;
    font-size: 2rem;
    font-weight: 600;
  }

`
export default RoomList;

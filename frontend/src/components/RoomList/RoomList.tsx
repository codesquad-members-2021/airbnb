import styled from "styled-components";
import RoomCard from 'components/RoomList/RoomCard';
import API from 'util/API';
import { useState, useEffect } from 'react';

const RoomList = ()=>{
  const [ roomData, setRoomData ] = useState([]);

  const fetchRoomList = async () => {
    const data = await API.get.room()

    const { roomList } = data;
    setRoomData(roomList);
    return roomList
  }

  useEffect(() => {
    fetchRoomList();
  }, [])


  return (
  <RoomListLayout>
    <div>
      <div className="roomlist-info">300개 이상의 숙소, 5월 12일 ~ 5월 18일, 100,000 ~ 1,000,000, 게스트 3명</div>
      <div className="roomlist-title">지도에서 선택한 지역의 숙소</div>
      { roomData.length > 0 && roomData.map((room:any) =>
      <RoomCard key={`room-${room.id}`} roomInfo={room}></RoomCard>)}
    </div>
  </RoomListLayout>
)};

const RoomListLayout = styled.div`
  display: flex;
  & > div {
    width: 50%;
    padding: 2rem;
  }

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

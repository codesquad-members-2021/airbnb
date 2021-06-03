import React, { useEffect, useState } from 'react';
import styled from 'styled-components';
import AvailableRoom from './AvailableRoom';
import RoomMap from './RoomMap';
import API from '../../utils/API';
import RoomPayModal from './RoomPayModal';

const ReservationMain = () => {
  const [roomData, setRoomData] = useState();
  const [isPayModalClicked, setIsPayModalClicked] = useState(false);

  useEffect(() => {
    const fetchData = API.get.room();
    fetchData.then((res) => setRoomData(res));
  }, []);

  console.log(roomData);

  const handlePayModalOff = (e) => {
    console.log('클로셋', e.target.closest('.paymodal'));
    //closest => 자신부터 부모요소 단위로 출발하여, 각 요소가 지정한 선택자에 만족할때까지 탐색한대여

    const clicked = e.target.closest('.paymodal');

    if (clicked) return;
    //모달 내부를 클릭 햇을때 닫히면 안되니까
    else {
      setIsPayModalClicked(false);
    }
  };

  return (
    <ReservationMainDiv>
      <AvailableRoom
        setIsPayModalClicked={setIsPayModalClicked}
        roomData={roomData}
      />
      <RoomMap roomData={roomData} />
      {isPayModalClicked && (
        <PayModalWrapper
          className="paymodalWrapper"
          onClick={(e) => handlePayModalOff(e)}
        >
          <RoomPayModal />
        </PayModalWrapper>
      )}
    </ReservationMainDiv>
  );
};

const ReservationMainDiv = styled.div`
  position: relative;
  display: flex;
  width: 100%;
  height: fit-content;
  top: 0;
`;

const PayModalWrapper = styled.div`
  position: fixed;
  overflow: hidden;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: rgba(0, 0, 0, 0.5);
  z-index: 99;
`;

export default ReservationMain;

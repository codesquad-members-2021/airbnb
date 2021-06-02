import styled from 'styled-components';
import RoomDescription from './RoomDescription';
import { ReactComponent as Heart } from '../../assets/svg/Property 1=heart.svg';
import { roomType } from './roomType';
import ReserveRoomGrade from './ReserveRoomGrade';
import ReserveRoomPrice from './ReserveRoomPrice';
import ReserveForm from './reserveForm/ReserveForm';
import { useRef } from 'react';
import useToggle from '../../hooks/useToggle';

interface Props {
  roomData: roomType;
}

const ReserveRoom = ({ roomData }: Props) => {
  const { photo } = roomData;
  const clickRef = useRef(null);
  const toggleRef = useRef(null);
  const { open } = useToggle({ clickRef, toggleRef });

  return (
    <StyledReserveRoom ref={clickRef}>
      <div className='room__img'>
        <img src={photo} alt='' />
      </div>
      <div className='room__info'>
        <div className='info__section'>
          <RoomDescription roomData={roomData} />
          <Heart />
        </div>
        <div className='info__section'>
          <ReserveRoomGrade />
          <ReserveRoomPrice roomData={roomData} />
        </div>
      </div>
      {open && <ReserveForm toggleRef={toggleRef} roomData={roomData} />}
    </StyledReserveRoom>
  );
};

export default ReserveRoom;

const StyledReserveRoom = styled.div`
  width: 100%;
  display: flex;
  padding: 3rem 0;
  cursor: pointer;
  .room__img {
    flex: 1;
    img {
      width: 330px;
      /* height: 200px; */
      border-radius: 10px;
    }
  }
  .room__info {
    flex: 0.9;
    display: flex;
    flex-direction: column;
  }
  .info__section:first-child {
    flex: 1;
    display: flex;
    justify-content: space-between;
  }
  .info__section:last-child {
    flex: 0.5;
    display: flex;
    align-items: flex-end;
    justify-content: space-between;
    padding-bottom: 0.5rem;
  }
`;

import styled from 'styled-components';
import { roomType } from './roomType';

interface Props {
  roomData: roomType;
}

const RoomDescription = ({ roomData: { name, condition, amenities } }: Props) => {
  const roomCondition = `최대 인원 ${condition.guests} · 방 ${condition.bedroomCount}개 · 침대 ${condition.bedCount}개 · 욕실 ${condition.bathroomCount}개`;
  const roomAmenities = amenities.split(',').join(' · ');

  return (
    <StyledRoomDescription>
      <div className='room__location'>강남구</div>
      <div className='room__title'>{name}</div>
      <div className='room__condition'>{roomCondition}</div>
      <div className='room__amenities'>{roomAmenities}</div>
    </StyledRoomDescription>
  );
};

export default RoomDescription;

const StyledRoomDescription = styled.div`
  .room__location,
  .room__condition,
  .room__amenities {
    font-size: ${({ theme }) => theme.fontSize.small};
    color: ${({ theme }) => theme.colors.gray3};
  }
  .room__location {
    margin: 8px 0;
  }
  .room__title {
    font-size: ${({ theme }) => theme.fontSize.medium};
    font-weight: 400;
    margin-bottom: 8px;
  }
  .room__condition,
  .room__amenities {
    color: ${({ theme }) => theme.colors.gray2};
    margin-bottom: 2px;
  }
`;

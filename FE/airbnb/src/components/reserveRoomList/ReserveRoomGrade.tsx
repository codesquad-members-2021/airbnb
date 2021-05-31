import styled from 'styled-components';
import { ReactComponent as Star } from '../../assets/svg/Property 1=star.svg';

interface Props {}

const ReserveRoomGrade = (props: Props) => {
  return (
    <StyledReserveRoomGrade>
      <Star className='star' />
      <div className='room__grade'>4.80</div>
      <div className='room__review'>(후기 127개)</div>
    </StyledReserveRoomGrade>
  );
};

export default ReserveRoomGrade;

const StyledReserveRoomGrade = styled.div`
  display: flex;
  .star {
    fill: ${({ theme }) => theme.colors.red};
    margin-right: 5px;
  }
  .room__grade {
    margin-right: 5px;
  }
  .room__review {
    color: ${({ theme }) => theme.colors.gray3};
  }
`;

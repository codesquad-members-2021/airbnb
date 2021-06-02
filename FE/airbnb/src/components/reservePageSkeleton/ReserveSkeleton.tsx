import styled from 'styled-components';

interface Props {}

const ReserveSkeleton = (props: Props) => {
  return (
    <StyledReserveSkeleton>
      <div className='skeleton__img'></div>
      <div className='skeleton__desc'>
        <div className='skeleton__info'></div>
        <div className='skeleton__price'></div>
      </div>
    </StyledReserveSkeleton>
  );
};

export default ReserveSkeleton;

const StyledReserveSkeleton = styled.div`
  .skeleton__img,
  .skeleton__info,
  .skeleton__price {
    background-color: f2f2f2;
  }
`;

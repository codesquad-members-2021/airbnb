import styled from 'styled-components';

interface Props {}

const ReserveSkeleton = (props: Props) => {
  return (
    <StyledReserveSkeleton>
      <div className='skeleton__img'>
        <div className='img'></div>
      </div>
      <div className='room__info'>
        <div className='info__section'>
          <div className='room__location'></div>
          <div className='room__title'></div>
          <div className='room__condition'></div>
          <div className='room__amenities'></div>
        </div>
        <div className='info__section'>
          <div className='grade'>
            <div className='room__grade'></div>
          </div>
          <div className='price'>
            <div className='room__day-price'></div>
          </div>
        </div>
      </div>
    </StyledReserveSkeleton>
  );
};

export default ReserveSkeleton;

const StyledReserveSkeleton = styled.div`
  width: 100%;
  display: flex;
  padding: 3rem 0;
  overflow: hidden;
  .img,
  .room__location,
  .room__title,
  .room__condition,
  .room__amenities,
  .room__grade,
  .room__day-price {
    position: relative;
    height: 20.91px;
    overflow: hidden;
    background-color: #f2f2f2;
    border-radius: 5px;
  }
  .img::before,
  .room__location::before,
  .room__title::before,
  .room__condition::before,
  .room__amenities::before,
  .room__grade::before,
  .room__day-price::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 50px;
    height: 100%;
    background: linear-gradient(to right, #f2f2f2, #ececec, #f2f2f2);
    animation: loading 1.5s infinite linear;
  }
  .img {
    width: 370px;
    height: 230px;
    border-radius: 10px;
    background-color: #f2f2f2;
  }
  .img::before {
    width: 100px;
  }

  .skeleton__img {
    flex: 1;
  }
  .room__info {
    flex: 0.9;
    display: flex;
    flex-direction: column;
  }
  .info__section:first-child {
    flex: 1;
    .room__location {
      width: 100px;
      margin: 8px 0;
    }
    .room__title {
      width: 200px;
      margin-bottom: 8px;
    }
    .room__condition,
    .room__amenities {
      width: 300px;
      margin-bottom: 2px;
    }
  }
  .info__section:last-child {
    flex: 0.5;
    display: flex;
    align-items: flex-end;
    justify-content: space-between;
    padding-bottom: 0.5rem;
  }
  .grade {
    display: flex;
    .room__grade {
      width: 150px;
      margin-right: 5px;
    }
  }
  .price {
    text-align: end;
    .room__day-price {
      width: 150px;
      height: 40px;
    }
  }

  @keyframes loading {
    0% {
      transform: translateX(0);
    }
    100% {
      transform: translateX(1000px);
    }
  }
`;

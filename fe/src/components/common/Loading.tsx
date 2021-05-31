import styled, { keyframes } from 'styled-components';

export const LoadingDefaultChart = () => {
  return (
    <Fallback>
      <svg viewBox={`0 0 500 100`} className="skeleton-chart">
        <polyline
          fill="#dddbdb8d"
          points={
            '0, 100 0, 83 13, 33 26, 83 52, 66 77, 83 90, 83 103, 66 116, 66 129, 50 142, 66 167, 83 180, 66 193, 50 206, 83 218, 50 231, 66 244, 83 257, 66 270, 50 283, 83 295, 33 308, 66 321, 50 334, 66 347, 50 359, 50 372, 66 385, 83 398, 0 411, 83 424, 50 436, 66 449, 33 462, 0 475, 50 488, 50 500, 33  500, 100'
          }
        />
      </svg>
      <span>Chart Loading...</span>
    </Fallback>
  );
};

export const Loading = () => {
  return <Fallback>Loading...</Fallback>;
};

const skeletonLoading = keyframes`
  \ 0% {
    transform: translateX(0);
    opacity: 0.8;
  }
  \ 25% {
    opacity: 0.6;

  }

  \ 50% {
    opacity: 0.9;

  }

  \ 75% {
    opacity: 0.4;

  }
  \ 100%{
    transform: translateX(500px);
    opacity: 0.7;

  }
`;

const Fallback = styled.div`
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
  position: relative;
  overflow: hidden;

  &::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 50px;
    height: 100%;
    background: #fdfdfd;
    animation: ${skeletonLoading} 1s infinite linear;
  }
`;

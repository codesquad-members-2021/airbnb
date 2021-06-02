import styled from 'styled-components';

interface Props {}

const MapSkeleton = (props: Props) => {
  return <StyledMapSkeleton className='skeleton-screen'>loading</StyledMapSkeleton>;
};

export default MapSkeleton;

const StyledMapSkeleton = styled.div`
  background-color: #f2f2f2;
  position: absolute;
  right: 0;
  width: 50%;
  height: 100%;

  &::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: linear-gradient(to right, #f2f2f2, #ddd, #f2f2f2);
    animation: loading 1s infinite linear;
  }

  @keyframes loading {
    0% {
      transform: translateX(0);
    }
    50%,
    100% {
      transform: translateX(460px);
    }
  }
`;

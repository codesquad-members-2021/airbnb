import styled from 'styled-components';

export const LoadingDefaultChart = () => {
  return (
    <Fallback>
      <svg viewBox={`0 0 500 100`}>
        <polyline
          fill="#e2a5a5"
          points={`0 100 50 50 100 50 200 40 300 65 400 30 500 100`}
        />
      </svg>
    </Fallback>
  );
};

export const Loading = () => {
  return <Fallback>Loading...</Fallback>;
};

const Fallback = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
`;

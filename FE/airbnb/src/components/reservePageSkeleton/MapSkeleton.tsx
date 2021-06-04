import { CircularProgress } from '@material-ui/core';
import { useEffect, useRef } from 'react';
import styled from 'styled-components';
import { CenterContainer } from '../../util/utilStyles';
const { kakao } = window;

interface Props {}

const MapSkeleton = (props: Props) => {
  const mapRef = useRef(null);
  const DEFAULT_LATITUDE = 37.496181;
  const DEFAULT_LONGITUDE = 127.030825;
  useEffect(() => {
    const options = {
      center: new kakao.maps.LatLng(DEFAULT_LATITUDE, DEFAULT_LONGITUDE), //지도의 중심좌표.
      level: 3, //지도의 레벨(확대, 축소 정도)
    };
    const map = new kakao.maps.Map(mapRef.current, options); //지도 생성 및 객체 리턴
  }, []);
  return (
    <>
      <StyledMapSkeleton ref={mapRef} className='skeleton-screen'></StyledMapSkeleton>
      <StyledCircleWrapper>
        <CircularProgress />
      </StyledCircleWrapper>
    </>
  );
};

export default MapSkeleton;

const StyledMapSkeleton = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: #f2f2f2;
  position: fixed;
  right: 0;
  width: 50%;
  height: 100%;
  z-index: -1;
  &::before {
    z-index: 10;
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    backdrop-filter: blur(2px);
  }
`;

const StyledCircleWrapper = styled(CenterContainer)`
  position: absolute;
  margin-top: 40px;
  right: 0;
  width: 50%;
  height: 100%;
  .MuiCircularProgress-colorPrimary {
    color: ${({ theme }) => theme.colors.gray2};
  }
`;

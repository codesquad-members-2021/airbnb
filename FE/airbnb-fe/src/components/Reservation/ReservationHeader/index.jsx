import React, { useContext, useState, useEffect, useRef } from 'react';
import styled from 'styled-components';
import AccountMenu from '../../Home/HeroSection/Header/AccountMenu';
import AirbnbIcon from '../../Atoms/icons/AirbnbIcon';
import Search from '../../Atoms/Search';
import { ReservationContext } from '..';

const ReservationHeader = () => {
  const { match } = useContext(ReservationContext);
  const [barType, setBarType] = useState('mini');
  const searchElement = useRef();

  useEffect(() => {
    const normalBarOff = (e) => {
      if (searchElement.current && !searchElement.current.contains(e.target)) {
        setBarType('mini');
      }
    };
    document.addEventListener('mousedown', normalBarOff);
    return () => {
      document.removeEventListener('mousedown', normalBarOff);
    };
  }, [searchElement]);

  return (
    <>
      {barType === 'normal' ? (
        <>
          <ReservationHeaderDiv ref={searchElement}>
            <HeaderDiv>
              <AirbnbIcon />
              <NavSelectDiv>
                <div>숙소</div>
                <div>체험</div>
                <div>온라인체험</div>
              </NavSelectDiv>
              <AccountMenu />
            </HeaderDiv>
            <Search matchParam={match.params} barType={barType} />
          </ReservationHeaderDiv>
        </>
      ) : (
        <>
          <ReservationHeaderDiv>
            <HeaderDiv>
              <AirbnbIcon />
              <div onClick={() => setBarType('normal')}>
                <Search matchParam={match.params} barType={barType} />
              </div>
              <AccountMenu />
            </HeaderDiv>
          </ReservationHeaderDiv>
        </>
      )}
    </>
  );
};

const ReservationHeaderDiv = styled.div`
  position: fixed;
  width: 100%;
  height: fit-content;
  z-index: 3;
  background-color: white;
  box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5),
    0px 2px 4px rgba(0, 0, 0, 0.25);
  padding-bottom: 1rem;
`;
const HeaderDiv = styled.div`
  position: relative;
  height: 94px;
  display: flex;
  justify-content: space-between;
  width: 88.88%;
  margin: 0 auto;
  align-items: center;
  color: ${({ theme }) => theme.colors.gray1};
`;

const NavSelectDiv = styled.div`
  display: flex;
  gap: 1.3rem;
`;

export default ReservationHeader;

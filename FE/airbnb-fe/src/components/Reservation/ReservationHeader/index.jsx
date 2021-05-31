import React, { useContext, useState } from 'react';
import styled from 'styled-components';
import AccountMenu from '../../Home/HeroSection/Header/AccountMenu';
import AirbnbIcon from '../../Atoms/icons/AirbnbIcon';
import Search from '../../Atoms/Search';
import { ReservationContext } from '..';

const ReservationHeader = () => {
  const { match } = useContext(ReservationContext);
  const [barType, setBarType] = useState('mini');

  return (
    <>
      <ReservationHeaderDiv>
        <HeaderDiv>
          <AirbnbIcon />
          <NavSelectDiv>
            <div>숙소</div>
            <div>체험</div>
            <div>온라인체험</div>
          </NavSelectDiv>
          <AccountMenu />
        </HeaderDiv>
      </ReservationHeaderDiv>
      <Search matchParam={match.params} barType={barType} />
    </>
  );
};

const ReservationHeaderDiv = styled.div``;
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

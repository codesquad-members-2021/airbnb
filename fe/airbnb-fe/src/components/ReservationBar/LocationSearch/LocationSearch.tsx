import styled from 'styled-components';
import React,{ ReactElement } from 'react';
import { useRecoilState } from 'recoil';

import { LocationSearchState } from '../atoms';

type LocationSearchProps = {
  className?: string
};

function LocationSearch({ className }: LocationSearchProps): ReactElement {
  const [location, setLocation] = useRecoilState<string>(LocationSearchState);

  const handleChange = ({ target }: React.ChangeEvent<HTMLInputElement>) => {
    setLocation(target.value);
  };

  return (
    <StyledLocationSearch>
      <div className='title'>위치</div>
      <input className='content' placeholder={'어디로 여행가세요?'} onChange={handleChange}/>
    </StyledLocationSearch>
  )
};

export default LocationSearch;

const StyledLocationSearch = styled.div`
  border: 9999px;
`;

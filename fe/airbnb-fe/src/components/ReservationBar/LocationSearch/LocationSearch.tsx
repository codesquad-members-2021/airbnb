import styled from 'styled-components';
import React,{ ReactElement } from 'react';
import { useRecoilState } from 'recoil';

import { LocationSearchState } from '../atoms';

type LocationSearchProps = {
  className?: string
};

function LocationSearch({ className }: LocationSearchProps): ReactElement {
  return (
    <StyledLocationSearch>
      LocationSearch
    </StyledLocationSearch>
  )
};

export default LocationSearch;

const StyledLocationSearch = styled.div`
  box-shadow: 0 0 0 1px red inset;
  width: 30rem; // FIXME
  height: 30rem; // FIEMX
  border: 9999px;
`;

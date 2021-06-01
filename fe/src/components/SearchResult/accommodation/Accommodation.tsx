import { useRecoilValue } from 'recoil';
import styled from 'styled-components';

import { isMiniSearchBarOpen } from '@recoil/atoms/searchResult';

import RoomInMap from './RoomInMap';

const Accommodation = () => {
  const isMiniBarOpen = useRecoilValue(isMiniSearchBarOpen);

  return (
    <AccommodationWarp>
      <Desc isOpen={isMiniBarOpen}>500개이상 블라블라</Desc>
      <Title isOpen={isMiniBarOpen}>지도에서 선택한 지역의 숙소</Title>
      <Container>
        <RoomInMap />
      </Container>
    </AccommodationWarp>
  );
};

export default Accommodation;

const AccommodationWarp = styled.section`
  margin: 0;
  padding: 32px 24px 0 24px;
  height: 100%;
  width: 50%;
`;

const Container = styled.div`
  display: flex;
  flex-direction: column;
  width: 684px;
  height: 806px;
`;

const Title = styled.h3<display>`
  display: ${({ isOpen }) => (isOpen ? '' : 'none')};
  margin: 8px 0 32px 0;
  color: ${({ theme }) => theme.color.gray3};
  font-weight: ${({ theme }) => theme.fontWeight.bold};
  font-size: ${({ theme }) => theme.fontSize.xl};
`;

const Desc = styled.span<display>`
  display: ${({ isOpen }) => (isOpen ? '' : 'none')};
  color: ${({ theme }) => theme.color.gray3};
  font-size: ${({ theme }) => theme.fontSize.s};
`;

interface display {
  isOpen: boolean;
}

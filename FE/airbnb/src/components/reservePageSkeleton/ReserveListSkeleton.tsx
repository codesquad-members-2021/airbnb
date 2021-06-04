import styled from 'styled-components';
import ReserveSkeleton from './ReserveSkeleton';

interface Props {}

const ReserveListSkeleton = (props: Props) => {
  const skeletonList = new Array(5).fill(0).map((_, idx) => <ReserveSkeleton key={idx} />);
  return <StyledReserveListSkeleton>{skeletonList}</StyledReserveListSkeleton>;
};

export default ReserveListSkeleton;

const StyledReserveListSkeleton = styled.div`
  position: absolute;
  width: 100%;
  height: 100%;
  left: 0;
  padding: 0 40px 0 24px;
  & > div:not(:last-child) {
    border-bottom: ${({ theme }) => `1px solid ${theme.colors.gray5}`};
  }
`;

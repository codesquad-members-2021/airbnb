import styled from 'styled-components';
import AirbnbIcon from './Atoms/icons/AirbnbIcon';
import { CircularProgress } from '@material-ui/core';
const Loader = ({ type, color }) => {
  return (
    <LoadingDiv>
      <AirbnbIcon width={'300px'} />
      <LoginNotice>Now is Loading</LoginNotice>
      <CircularProgress
        mode="indeterminate"
        style={{ color: '#E84C60' }}
        size={100}
      />
    </LoadingDiv>
  );
};

const LoadingDiv = styled.div`
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
`;
const LoginNotice = styled.div`
  width: 100%;
  height: fit-content;
  margin-bottom: 1rem;
  font-size: 30px;
  color: ${({ theme }) => theme.colors.gray3};
  border-radius: 20px;
`;

export default Loader;

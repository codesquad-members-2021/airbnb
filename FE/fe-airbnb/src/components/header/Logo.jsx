import styled from 'styled-components';

const Logo = (props) => {
  // 나중에 라우팅 처리 해야함
  return (
    <Div>
      <span>airbnb</span>
    </Div>
  );
};

const Div = styled.div`
  span {
    font-size: ${({ theme }) => theme.fontSizes.XL};
    font-weight: bold;
  }
`;

export default Logo;

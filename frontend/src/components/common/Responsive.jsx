import styled from "styled-components";

const Responsive = ({ children, ...rest }) => {
  return <ResponsiveBlock>{children}</ResponsiveBlock>;
};

const ResponsiveBlock = styled.div`
  max-width: 100%;
  height: 100vh;
  margin: 0 auto; /* 중앙 정렬 */
  box-sizing: border-box;

  /* 브라우저 크기에 따라 가로 크기 변경 */
  @media (max-width: 1024px) {
    // 브라우저가 1024미만일때 안에 내용물이 768
    width: 100%;
    padding: 0 30px;
  }
  @media (max-width: 768px) {
    // 브라우저가 768 미만일때 안에 내용물이 332
    width: 100%;
    padding: 0 20px;
  }
`;

export default Responsive;

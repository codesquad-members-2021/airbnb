import styled from "styled-components";

const Responsive = ({ children, ...rest }) => {
  return <ResponsiveBlock>{children}</ResponsiveBlock>;
};

const ResponsiveBlock = styled.div`
  max-width: 100%;
  height: 100vh;
  margin: 0 auto;
  box-sizing: border-box;

  @media (max-width: 1024px) {
    width: 100%;
    padding: 0 30px;
  }
  @media (max-width: 768px) {
    width: 100%;
    padding: 0 20px;
  }
`;

export default Responsive;

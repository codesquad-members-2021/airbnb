import styled from "styled-components";

function Logo() {
  const SRC = "https://upload.wikimedia.org/wikipedia/commons/6/69/Airbnb_Logo_B%C3%A9lo.svg";
  return (
    <LogoContainer>
      <img src={SRC} alt="airbnb" />
    </LogoContainer>
  );
}

export default Logo;

const LogoContainer = styled.div`
  display: flex;
  align-items: center;
  img {
    width: 100px;
  }
`;

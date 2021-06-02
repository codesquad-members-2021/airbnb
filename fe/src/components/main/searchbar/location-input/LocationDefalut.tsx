import styled from "styled-components";

const LocationDefalut = () => {
  return (
    <StyledLocationDefalut>
      <img alt="location" src="location.jpg" width="64px" height="64px" />
      <span>가까운 여행지 둘러보기</span>
    </StyledLocationDefalut>
  );
};

export default LocationDefalut;

const StyledLocationDefalut = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 1rem;
  img{
      border-radius: 1rem;
      margin-right: 1rem;
  }

  span {
      font-size: 1.2rem;
      font-weight: 600;
  }
`;

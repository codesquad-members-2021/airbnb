import styled from "styled-components";

const Navigator = () => {
  const navText: Array<string> = ["숙소", "체험", "온라인 체험"];
  return (
    <>
      <NavigatorLayout>
        {navText.map((text, idx) => {
          return <NavigatorList key={`nav-${idx}`}>{text}</NavigatorList>;
        })}
      </NavigatorLayout>
    </>
  );
};

const NavigatorList = styled.li`
  width: 8rem;
  text-align: center;
  padding: 10px;
  font-size: 1.6rem;
  &:hover {
    font-weight: bold;
    text-decoration-line: underline;
  }
  cursor: pointer;

  @media (max-width: 1024px) {
    width: 8rem;
    font-size: 0.8rem;
    padding: 2%;
  }
`;
const NavigatorLayout = styled.ul`
  display: flex;
`;

export default Navigator;

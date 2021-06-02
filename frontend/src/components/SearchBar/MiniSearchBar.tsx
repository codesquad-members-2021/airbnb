import styled from "styled-components";
import { ReactComponent as smallSearchBtn } from "image/smallSearchBtn.svg";
import { miniBarClickState } from "recoil/Atoms";
import { useSetRecoilState } from "recoil";
const MiniSearchBar = () => {
  const setMiniBarClickFlag = useSetRecoilState(miniBarClickState);

  return (
    <MiniSearchBarLayout onClick={() => setMiniBarClickFlag(x => !x)}>
      <MiniSearchBarContainer className="search-bar">
        <Text _left="2.5rem">일정 입력</Text>
        <MiniSearchLine _left="87px" />
        <Text _left="10.5rem">금액대 입력</Text>
        <MiniSearchLine _left="178px" />
        <Text _left="19rem">인원 입력</Text>
        <SearchBarButton />
      </MiniSearchBarContainer>
    </MiniSearchBarLayout>
  );
};
const MiniSearchBarContainer = styled.div`
  position: relative;
  display: flex;
  width: 100%;
  height: 50px;
  background: #ffffff;
  border: 1px solid #bdbdbd;
  border-radius: 60px;
  box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5),
    0px 2px 4px rgba(0, 0, 0, 0.25);
  cursor: pointer;

  &:hover {
    box-shadow: 2px 2px 5px #555;
    transition: box-shadow 0.2s ease;
  }
  @media (max-width: 1024px) {
    margin: 0 auto;
    width: 100%;
  }
`;

type TMiniSearchBar = {
  _left?: string;
};

const SearchBarButton = styled(smallSearchBtn)`
  position: absolute;
  right: 1rem;
  top: 0.5rem;
  width: 3rem;
  cursor: pointer;
`;

const MiniSearchLine = styled.div`
  position: absolute;
  height: 2rem;
  width: 1px;
  left: ${(props: TMiniSearchBar) => props._left};
  top: 14px;
  border-radius: 0px;
  background: #e0e0e0;
`;
const MiniSearchBarLayout = styled.div`
  position: relative; //여기

  width: 30rem;
  display: flex;
  margin: 0 auto;
  flex-direction: column;
  align-items: center;
`;
const Text = styled.div`
  position: absolute;
  width: 20%;
  left: ${(props: TMiniSearchBar) => props._left};
  top: 2rem;
  color: #828282;
  font-size: 1.2rem;
`;
export default MiniSearchBar;

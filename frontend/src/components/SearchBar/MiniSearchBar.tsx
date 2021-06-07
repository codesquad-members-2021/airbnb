import styled from "styled-components";
import { ReactComponent as smallSearchBtn } from "image/smallSearchBtn.svg";
import { MiniSearchBarClickState, searchBarClickState } from "recoil/Atoms";
import { useSetRecoilState } from "recoil";
import { search } from "util/enum";
const MiniSearchBar = () => {
  const setMiniSearchBarClickFlag = useSetRecoilState(MiniSearchBarClickState);
  const setsSearchBarClick = useSetRecoilState(searchBarClickState);
  const handleMiniSearchBarClick = (
    e: React.MouseEvent<Element, MouseEvent>
  ) => {
    const target = e.target as HTMLElement;
    const targetId = target.id;
    setClickFlagByType(targetId);

  };
  const setClickFlagByType = (type: string) => {
    switch (type) {
      case "check-in-out":
        setsSearchBarClick(search.in);
        break;
      case "room-price":
        setsSearchBarClick(search.room);
        break;
      case "guests":
        setsSearchBarClick(search.guests);
        break;
      default:
        throw new Error("Unhandled  Type");
    }
  };

  return (
    <MiniSearchBarLayout onClick={() => setMiniSearchBarClickFlag(x => !x)}>
      <MiniSearchBarContainer
        className="search-bar"
        onClick={handleMiniSearchBarClick}
      >
        <Text id="check-in-out">일정 입력</Text>
        <MiniSearchLine _left="87px" />
        <Text id="room-price">금액대 입력</Text>
        <MiniSearchLine _left="178px" />
        <Text id="guests"> 인원 입력</Text>
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
  width: 20%;
  padding: 1.9rem 1.5rem;
  text-align: center;
  color: #828282;
  font-size: 1.2rem;
`;
export default MiniSearchBar;

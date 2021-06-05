import { useEffect, useMemo} from "react";
import { useRecoilState } from "recoil";
import styled from "styled-components";
import { Link } from "react-router-dom";
import { MiniSearchBarClickState } from "recoil/Atoms";
import { ReactComponent as Logo } from "components/common/Logo.svg";
import Login from "components/Header/Login";
import MiniSearchBar from "components/SearchBar/MiniSearchBar";
import SearchBar from "components/SearchBar/SearchBar";
import Navigator from "components/Header/Navigator";

const MiniHeader = () => {
  const [miniBarClickFlag, setMiniBarClick] = useRecoilState(
    MiniSearchBarClickState
  );

  const toggleMiniHeader = (e: MouseEvent): void => {
    const target = e.target as HTMLElement;
    if (!target.closest(".search-bar")) setMiniBarClick(false);
  };

  useEffect(() => {
    document.body.addEventListener("click", toggleMiniHeader);
  }, []);

  return (
    <>
      <MiniHeaderLayout>
        <MiniHeaderContainer>
          <Link to="/">
            <Logo width="100px" />
          </Link>
          {miniBarClickFlag && <Navigator />}
          {!miniBarClickFlag && <MiniSearchBar />}
          <Login />
        </MiniHeaderContainer>
        {miniBarClickFlag && <SearchBar />}
      </MiniHeaderLayout>
    </>
  );
};
const MiniHeaderLayout = styled.div`
  position: fixed;
  width: 100%;
  backdrop-filter: blur(4px);
  background-color: white;
  box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5),
    0px 2px 4px rgba(0, 0, 0, 0.25);
`;
const MiniHeaderContainer = styled.div`
  display: flex;
  justify-content: space-between;
  padding: 1rem 2.4rem;
`;
// const MiniHeaderMemo = React.memo(MiniHeader);
export default MiniHeader;

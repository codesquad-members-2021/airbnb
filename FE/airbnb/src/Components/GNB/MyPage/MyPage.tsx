import { useRecoilState } from "recoil";
import { loginState, dropDownState } from "@/Components/GNB/GNBRecoil";
import MyMenuIcon from "./MyMenuIcon";
import MyImage from "./MyImage";
import DropDown from "./DropDown/DropDown";
import { MyPage as S } from "@/Components/GNB/GNBStlyes";

const MyPage = () => {
  const [login] = useRecoilState(loginState); // setLogin 추가필요
  const [dropDownFlag, setDropDownFlag] = useRecoilState(dropDownState);

  // 추후 로그인 환경 구축 시 사용할 메서드
  // const handleLogin = () => {
  //   setLogin((prev) => !prev);
  // };

  const handleDropDownFlag = () => {
    setDropDownFlag((prev) => !prev);
  };

  return (
    <>
      <S.MyPage onClick={handleDropDownFlag}>
        <MyMenuIcon />
        <MyImage login={login} />
      </S.MyPage>
      <DropDown dropDownFlag={dropDownFlag} login={login} />
    </>
  );
};

export default MyPage;

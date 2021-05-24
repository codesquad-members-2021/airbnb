import DropDownList from "./DropDownList";
import { MyPage as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  dropDownFlag: boolean;
  login: boolean;
}

const DropDown = ({ dropDownFlag, login }: Props) => {
  let dropdownList;
  login
    ? (dropdownList = ["예약리스트", "위시리스트", "로그아웃"])
    : (dropdownList = ["로그인", "예약하기", "찜하기"]);

  if (!dropDownFlag) return null;

  return (
    <S.DropDown>
      {dropdownList.map((list) => (
        <DropDownList key={list} content={list} />
      ))}
    </S.DropDown>
  );
};

export default DropDown;

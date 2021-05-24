import MenuList from "./MenuList";
import { Menu as S } from "@/Components/GNB/GNBStlyes";

const Menu = () => {
  const menuList = ["숙소", "체험", "온라인체험"];

  return (
    <S.Menu>
      {menuList.map((list) => (
        <MenuList key={list} listName={list} />
      ))}
    </S.Menu>
  );
};

export default Menu;

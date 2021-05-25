import { Menu as S } from "@/Components/GNB/GNBStlyes";

interface ListName {
  listName: string;
}

const MenuList = ({ listName }: ListName) => {
  return <S.MenuList>{listName}</S.MenuList>;
};

export default MenuList;

import { useRecoilState } from "recoil";
import { wishListState } from "@/Components/Search/SearchStore";
import { postApi } from "@/Utils/api";
import { Accomodation as S } from "@/Components/Search/SearchStyles";

interface Props {
  id: number;
}

const WishListButton = ({ id }: Props) => {
  const [wishList, setWishList] = useRecoilState(wishListState);

  const handleClick = (e: any) => {
    e.stopPropagation();
    const roomId = e.target.closest("svg").dataset.roomId;
    if (wishList.includes(roomId)) {
      setWishList(wishList.filter((v) => v !== roomId));
      // delApi.wish({ roomId: Number(roomId) });
    } else {
      setWishList([...wishList, roomId]);
      postApi.wish({ roomId: Number(roomId) });
    }
  };

  return (
    <S.WishListButton
      $isSelectedRoom={wishList.includes(`${id}`)}
      data-room-id={id}
      onClick={handleClick}
    />
  );
};

export default WishListButton;

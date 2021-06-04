import { useState } from "react";
import { AccomodationModal as S } from "@/Components/Search/SearchStyles";

interface Props {
  id: number;
}

const WishListButton = ({ id }: Props) => {
  const [selectedRoomId, setSelectedRoomId] = useState("");

  const handleClick = (e: any) => {
    e.stopPropagation();
    const roomId = e.target.dataset.roomId;
    if (roomId === selectedRoomId) {
      setSelectedRoomId("");
    } else {
      setSelectedRoomId(e.target.dataset.roomId);
    }
  };

  return (
    <S.WishListButton
      $isSelectedRoom={selectedRoomId === `${id}`}
      data-room-id={id}
      onClick={handleClick}
    />
  );
};

export default WishListButton;

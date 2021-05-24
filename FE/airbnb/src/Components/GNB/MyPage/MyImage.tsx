import { ReactComponent as MyImageIcon } from "@/assets/myImageIcon.svg";
import { MyPage as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  login: boolean;
}

const MyImage = ({ login }: Props) => {
  return !login ? (
    <S.MyImage>
      <MyImageIcon />
    </S.MyImage>
  ) : null;
};

export default MyImage;

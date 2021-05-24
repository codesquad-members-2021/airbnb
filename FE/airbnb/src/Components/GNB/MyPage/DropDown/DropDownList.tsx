import { MyPage as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  content: string;
}

const DropDownList = ({ content }: Props) => {
  return (
    <>
      <S.DropDownList>{content}</S.DropDownList>
      <S.ListLine></S.ListLine>
    </>
  );
};

export default DropDownList;

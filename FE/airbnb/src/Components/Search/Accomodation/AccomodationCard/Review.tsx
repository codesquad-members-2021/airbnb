import { Accomodation as S } from "@/Components/Search/SearchStyles";

interface Props {
  reviewCount: number;
}

const Review = ({ reviewCount }: Props) => {
  return <S.Review>(후기 {reviewCount}개)</S.Review>;
};

export default Review;

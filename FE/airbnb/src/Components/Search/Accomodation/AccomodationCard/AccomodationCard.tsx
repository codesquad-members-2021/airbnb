import { useRecoilValue, useSetRecoilState } from "recoil";
import { selectInputState } from "@/Components/GNB/GNBStore";
import {
  showAccomodationModalState,
  accomodationModalDataState,
} from "@/Components/Search/SearchStore";
import Image from "./Image";
import AccomodationTitle from "./AccomodationTitle";
import Detail from "./Detail/Detail";
import WishListButton from "./WishListButton";
import Grade from "./Grade";
import Review from "./Review";
import Price from "./Price";
import TotalPrice from "./TotalPrice";
import { Accomodation as S } from "@/Components/Search/SearchStyles";

interface Props {
  accomodation: any;
}

const AccomodationCard = ({ accomodation }: Props) => {
  const setShowAccomodationModalFlag = useSetRecoilState(
    showAccomodationModalState
  );
  const setAccomodationModalData = useSetRecoilState(
    accomodationModalDataState
  );
  const checkIn = useRecoilValue(selectInputState.checkIn);
  const checkOut = useRecoilValue(selectInputState.checkOut);

  const checkInToNum = Number(checkIn.replace(/-/g, ""));
  const checkOutToNum = Number(checkOut.replace(/-/g, ""));
  const stayCount = checkOutToNum - checkInToNum;
  const weekCount = Math.floor(stayCount / 7);
  const weeksDiscount = Math.floor(
    accomodation.price * 0.04 * weekCount * stayCount
  );
  const totalPrice =
    accomodation.price * stayCount -
    weeksDiscount +
    accomodation.tax.cleanTax +
    accomodation.tax.serviceTax +
    accomodation.tax.accommodationTax;

  const handleClick = () => {
    setShowAccomodationModalFlag(true);
    setAccomodationModalData({
      ...accomodation,
      stayCount,
      weeksDiscount,
      totalPrice,
    });
  };

  return (
    <S.AccomodationCard onClick={handleClick}>
      <Image mainImage={accomodation.images.mainImage} />
      <S.AccomodationInfo>
        <S.InfoTop>
          <AccomodationTitle title={accomodation.title} />
          <Detail detail={accomodation.detail} />
          <WishListButton id={accomodation.roomId} />
        </S.InfoTop>
        <S.InfoBottom>
          <div>
            <Grade grade={accomodation.grade} />
            <Review reviewCount={accomodation.reviewCount} />
          </div>
          <S.PriceWrapper>
            <Price price={accomodation.price} />
            <TotalPrice totalPrice={totalPrice} />
          </S.PriceWrapper>
        </S.InfoBottom>
      </S.AccomodationInfo>
    </S.AccomodationCard>
  );
};

export default AccomodationCard;

import { useRecoilState, useRecoilValue } from "recoil";
import {
  showAccomodationModalState,
  accomodationModalDataState,
} from "@/Components/Search/SearchStore";
import Image from "./Image";
import Title from "./Title";
import Grade from "./Grade";
import Review from "./Review";
import HostId from "./HostId";
import HostImage from "./HostImage";
import SelectedInfo from "./SelectedInfo";
import ReservationButton from "./ReservationButton";
import PriceDescription from "./PriceDescription";
import Price from "./Price";
import { AccomodationModal as S } from "@/Components/Search/SearchStyles";

const AccomodationModal = () => {
  const [showAccomodationModalFlag, setShowAccomodationModalFlag] =
    useRecoilState(showAccomodationModalState);
  const accomodation = useRecoilValue(accomodationModalDataState);

  return (
    <>
      <S.AccomodationModalBackground
        onClick={() => setShowAccomodationModalFlag(false)}
        IsShow={showAccomodationModalFlag}
      />
      <S.AccomodationModal IsShow={showAccomodationModalFlag}>
        <Image />
        <S.MainInfoWrapper>
          <Title />
          <Grade />
          <Review />
        </S.MainInfoWrapper>
        <S.HostWrapper>
          <HostId />
          <HostImage />
        </S.HostWrapper>
        <S.SelectedInfoWrapper>
          <SelectedInfo />
          <ReservationButton />
        </S.SelectedInfoWrapper>
        {accomodation.price ? (
          <>
            <S.PriceWrapper>
              <S.PriceRow isTotal={false}>
                <PriceDescription
                  description={`₩${accomodation.price} X ${accomodation.stayCount}박`}
                />
                <Price
                  isDiscount={false}
                  price={accomodation.price * accomodation.stayCount}
                />
              </S.PriceRow>
              <S.PriceRow isTotal={false}>
                <PriceDescription description={"4% 주 단위 요금 할인"} />
                <Price isDiscount={true} price={accomodation.weeksDiscount} />
              </S.PriceRow>
              <S.PriceRow isTotal={false}>
                <PriceDescription description={"청소비"} />
                <Price isDiscount={false} price={accomodation.tax.cleanTax} />
              </S.PriceRow>
              <S.PriceRow isTotal={false}>
                <PriceDescription description={"서비스 수수료"} />
                <Price isDiscount={false} price={accomodation.tax.serviceTax} />
              </S.PriceRow>
              <S.PriceRow isTotal={false}>
                <PriceDescription description={"숙박세와 수수료"} />
                <Price
                  isDiscount={false}
                  price={accomodation.tax.accommodationTax}
                />
              </S.PriceRow>
            </S.PriceWrapper>
            <S.PriceRow isTotal={true}>
              <PriceDescription description={"총 합계"} />
              <Price isDiscount={false} price={accomodation.totalPrice} />
            </S.PriceRow>
          </>
        ) : null}
      </S.AccomodationModal>
    </>
  );
};

export default AccomodationModal;

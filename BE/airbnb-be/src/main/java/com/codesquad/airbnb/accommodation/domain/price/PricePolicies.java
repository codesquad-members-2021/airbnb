package com.codesquad.airbnb.accommodation.domain.price;

import com.codesquad.airbnb.reservation.domain.ReservationDetail;

import java.util.Arrays;
import java.util.List;

public class PricePolicies {
    // TODO: 자료구조 생각해보기
    private List<PricePolicy> pricePolicies;

    public PricePolicies(List<PricePolicy> pricePolicies) {
        this.pricePolicies = pricePolicies;
    }

    static PricePolicies defaultPolicies() {
        return new PricePolicies(Arrays.asList(
                DiscountPolicy.defaultDiscountPolicy(),
                CleaningFeePolicy.defaultCleaningFeePolicy(),
                ServiceFeePolicy.defaultServiceFeePolicy(),
                AccommodationTaxPolicy.defaultAccommodationTaxPolicy()
        ));
    }

    public int discountPrice(ReservationDetail reservationDetail, int pricePerNights) {
        for (PricePolicy each : pricePolicies) {
            if (each.isDiscount()) {
                return each.calculate(reservationDetail, pricePerNights);
            }
        }

        return 0;
    }

    public int cleaningFee(ReservationDetail reservationDetail, int pricePerNights) {
        for (PricePolicy each : pricePolicies) {
            if (each.isCleaningFee()) {
                return each.calculate(reservationDetail, pricePerNights);
            }
        }

        return 0;
    }

    public int serviceFee(ReservationDetail reservationDetail, int pricePerNights) {
        for (PricePolicy each : pricePolicies) {
            if (each.getServiceFeePercent()) {
                return each.calculate(reservationDetail, pricePerNights);
            }
        }

        return 0;
    }

    public int accommodationTax(ReservationDetail reservationDetail, int pricePerNights) {
        for (PricePolicy each : pricePolicies) {
            if (each.isAccommodationTax()) {
                return each.calculate(reservationDetail, pricePerNights);
            }
        }

        return 0;
    }
}

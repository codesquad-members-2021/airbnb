package com.codesquad.airbnb.accommodation.domain.price;

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

    public int discountPrice(int priceForNights) {
        for (PricePolicy each : pricePolicies) {
            if (each.isDiscount()) {
                return each.calculate(priceForNights);
            }
        }

        return 0;
    }

    public int cleaningFee(int priceForNights) {
        for (PricePolicy each : pricePolicies) {
            if (each.isCleaningFee()) {
                return each.calculate(priceForNights);
            }
        }

        return 0;
    }

    public int serviceFee(int priceForNights) {
        for (PricePolicy each : pricePolicies) {
            if (each.isServiceFee()) {
                return each.calculate(priceForNights);
            }
        }

        return 0;
    }

    public int accommodationTax(int priceForNights) {
        for (PricePolicy each : pricePolicies) {
            if (each.isAccommodationTax()) {
                return each.calculate(priceForNights);
            }
        }

        return 0;
    }
}

package com.codesquad.airbnb.accommodation.domain.price;

public class AccommodationTaxPolicy implements PricePolicy {
    private static final int DEFAULT_ACCOMMODATION_TAX_PERCENT = 5;

    private int accommodationTaxPercent;

    public AccommodationTaxPolicy(int accommodationTaxPercent) {
        this.accommodationTaxPercent = accommodationTaxPercent;
    }

    public static AccommodationTaxPolicy defaultAccommodationTaxPolicy() {
        return new AccommodationTaxPolicy(DEFAULT_ACCOMMODATION_TAX_PERCENT);
    }

    @Override
    public boolean isAccommodationTax() {
        return true;
    }

    @Override
    public int calculate(int priceForNights) {
        return PriceUtils.calculatePercent(priceForNights, accommodationTaxPercent);
    }
}

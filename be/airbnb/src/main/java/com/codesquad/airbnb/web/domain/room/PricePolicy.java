package com.codesquad.airbnb.web.domain.room;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.ToString;

@Getter
@AllArgsConstructor
@Builder
@ToString
public class PricePolicy {
    private int serviceFee;
    private int accomodationTax;
    private int cleanUpCost;
    private int pricePerDay;
}

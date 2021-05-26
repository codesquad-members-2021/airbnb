package airbnb.domain;

public class Tax {
    private int cleanTax;
    private int serviceTax;
    private int accommodationTax;

    public Tax(int cleanTax, int serviceTax, int accommodationTax) {
        this.cleanTax = cleanTax;
        this.serviceTax = serviceTax;
        this.accommodationTax = accommodationTax;
    }

    public int getCleanTax() {
        return cleanTax;
    }

    public int getServiceTax() {
        return serviceTax;
    }

    public int getAccommodationTax() {
        return accommodationTax;
    }

    public static Tax of (int cleanTax, int price){
        return new Tax (cleanTax, (int)Math.round(price*0.15), (int)Math.round(price*0.015));
    }
}

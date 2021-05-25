package airbnb.wrapper;

public class PricesWrapper {

    private PriceResponse prices;

    public PricesWrapper(PriceResponse prices) {
        this.prices = prices;
    }

    public PriceResponse getPrices() {
        return prices;
    }
}

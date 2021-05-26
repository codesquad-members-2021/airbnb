package airbnb.wrapper;

import java.util.List;

public class PricesWrapper {

    private List<Integer> prices;

    public PricesWrapper(List<Integer> prices) {
        this.prices = prices;
    }

    public List<Integer> getPrices() {
        return prices;
    }
}

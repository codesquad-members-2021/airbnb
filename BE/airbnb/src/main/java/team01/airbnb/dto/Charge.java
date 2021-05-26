package team01.airbnb.dto;

public class Charge {
    private final int charge;

    public static Charge wons(int charge) {
        return new Charge(charge);
    }

    Charge(int charge) {
        this.charge = charge;
    }

}

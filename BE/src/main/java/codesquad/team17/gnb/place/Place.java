package codesquad.team17.gnb.place;

public class Place {
    private Long id;
    private String name;
    private int maximumNumberOfPeople;

    public Place(Long id, String name, int maximumNumberOfPeople) {
        this.id = id;
        this.name = name;
        this.maximumNumberOfPeople = maximumNumberOfPeople;
    }
}

package codesquad.team17.gnb.room;

public class Room {
    private Long id;
    private String name;
    private int maximumNumberOfPeople;

    public Room(Long id, String name, int maximumNumberOfPeople) {
        this.id = id;
        this.name = name;
        this.maximumNumberOfPeople = maximumNumberOfPeople;
    }
}

package codesquad.team17.gnb.place.domain;

public class Option {

    private final String rooms;
    private final String additional;

    public Option(String rooms, String additional) {
        this.rooms = rooms;
        this.additional = additional;
    }

    public String getRooms() {
        return rooms;
    }

    public String getAdditional() {
        return additional;
    }
}

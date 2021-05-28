package codesquad.team17.gnb.place.dto;

import codesquad.team17.gnb.place.domain.Option;

public class OptionDto {
    private final String rooms;
    private final String additional;

    public OptionDto(Option rooms) {
        this.rooms = rooms.getRooms();
        this.additional = rooms.getAdditional();
    }

    public String getRooms() {
        return rooms;
    }

    public String getAdditional() {
        return additional;
    }
}

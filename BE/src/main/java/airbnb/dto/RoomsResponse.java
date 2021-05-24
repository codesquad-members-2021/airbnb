package airbnb.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

import javax.xml.soap.Detail;

public class RoomsResponse {

    private final Long roomId;
    private final int price;
    private final String title;
    private final String description;
    private final Host host;
    private final ImageResponse images;

    @JsonProperty(value = "detail")
    private final RoomDetaileResponse roomDetaileResponse;
}

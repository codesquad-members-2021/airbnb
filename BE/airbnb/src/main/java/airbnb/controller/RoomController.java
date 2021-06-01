package airbnb.controller;

import airbnb.request.SearchRequest;
import airbnb.response.RoomDetailPageResponse;
import airbnb.response.RoomResponses;
import airbnb.service.RoomService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class RoomController {
    private final RoomService roomService;

    @GetMapping("/rooms")
    public RoomResponses search(SearchRequest searchRequest) {
        return roomService.findRoomsFilteredBy(searchRequest);
    }

    @GetMapping("/rooms/{roomId}")
    public RoomDetailPageResponse viewDetailPage(@PathVariable Long roomId) {
        return roomService.findRoomDetailPageById(roomId);
    }
}

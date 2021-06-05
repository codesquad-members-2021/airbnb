package airbnb.controller;

import airbnb.request.SearchRequest;
import airbnb.response.RoomDetailPageResponse;
import airbnb.response.RoomResponse;
import airbnb.response.RoomResponses;
import airbnb.service.RoomService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class RoomController {
    private final RoomService roomService;

    @GetMapping("/web/rooms")
    public RoomResponses viewCategorizedFilteredRooms(SearchRequest searchRequest) {
        return roomService.findRoomsCategorizedByCity(searchRequest);
    }

    @GetMapping("/ios/rooms")
    public List<RoomResponse> viewFilteredRooms(SearchRequest searchRequest) {
        return roomService.findRoomsFilteredBy(searchRequest);
    }

    @GetMapping("/rooms/{roomId}")
    public RoomDetailPageResponse viewDetailPage(@PathVariable Long roomId) {
        return roomService.findRoomDetailPageById(roomId);
    }

    @GetMapping("/v2/rooms")
    public Page<RoomResponse> viewFilteredRoomsByPage(SearchRequest searchRequest, Pageable pageable) {
        return roomService.findPagedRoomsFilteredBy(searchRequest, pageable);
    }
}

package airbnb.controller;

import airbnb.Service.RoomService;
import airbnb.domain.Room;
import airbnb.dto.PriceRequest;
import airbnb.dto.RoomSearchRequest;
import airbnb.wrapper.PricesWrapper;
import airbnb.wrapper.RoomResponseWrapper;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/rooms")
public class RoomController {

    private final RoomService roomService;

    public RoomController(RoomService roomService) {
        this.roomService = roomService;
    }

    @GetMapping("/price")
    public PricesWrapper readAllRoomPrices() {
        return new PricesWrapper(roomService.findAllRoomPrice());
    }

    @PostMapping("/price")
    public PricesWrapper readSearchRoomPrices(@RequestBody PriceRequest priceRequest) {
        return new PricesWrapper(roomService.findSearchRoomPrice(priceRequest));
    }

    @PostMapping
    public RoomResponseWrapper searchRooms(@RequestBody RoomSearchRequest roomSearchRequest) {
        return new RoomResponseWrapper(roomService.SearchRoomToRoomResponseList(roomSearchRequest));
    }
}

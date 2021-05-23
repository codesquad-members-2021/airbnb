package com.codesquad.coco.rooms;

import com.codesquad.coco.rooms.model.dto.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class RoomsController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    private RoomsService roomsService;

    public RoomsController(RoomsService roomsService) {
        this.roomsService = roomsService;
    }

    @GetMapping("/search/price")
    public PricesDTO searchPrice(SearchPriceDTO searchPriceDTO) {
        logger.debug(searchPriceDTO.toString());
        return roomsService.findPricesBySearchPrice(searchPriceDTO);
    }

    @GetMapping("/search")
    public SearchRoomsListDTO searchRooms(SearchRoomsDTO roomsDTO) {
        List<RoomsListDTO> roomsListDTOs = roomsService.findRoomsBySearchRooms(roomsDTO);
        return new SearchRoomsListDTO(roomsListDTOs);
    }

    @GetMapping("/rooms/{roomsId}")
    public RoomsDetailDTO roomsDetail(@PathVariable Long roomsId) {
        return roomsService.findRoomsDTOByRoomsId(roomsId);
    }
}

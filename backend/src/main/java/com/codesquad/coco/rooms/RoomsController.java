package com.codesquad.coco.rooms;

import com.codesquad.coco.rooms.model.dto.PricesDTO;
import com.codesquad.coco.rooms.model.dto.SearchPriceDTO;
import com.codesquad.coco.rooms.model.dto.SearchRoomsDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

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
    public void searchRooms(SearchRoomsDTO roomsDTO) {
        logger.debug(roomsDTO.toString());
        //todo : 들어온 정보로 예약 가능한 곳 검색
        // maxGuestt와 price의 min max , check 날짜
    }
}

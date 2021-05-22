package com.codesquad.coco.rooms;

import com.codesquad.coco.rooms.model.Rooms;
import com.codesquad.coco.rooms.model.dto.PricesDTO;
import com.codesquad.coco.rooms.model.dto.SearchPriceDTO;
import com.codesquad.coco.rooms.model.dto.SearchRoomsDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoomsService {

    private final RoomsDAO roomsDAO;

    public RoomsService(RoomsDAO roomsDAO) {
        this.roomsDAO = roomsDAO;
    }

    public PricesDTO findPricesBySearchPrice(SearchPriceDTO searchPriceDTO) {
        List<Integer> prices = roomsDAO.findPricesBySearchPrice(searchPriceDTO);
        return new PricesDTO(prices);
    }

    public List<Rooms> findRoomsBySearchRooms(SearchRoomsDTO roomsDTO) {
        return roomsDAO.findRoomsBySearchRooms(roomsDTO);
    }

    public Rooms findRoomsByRoomsId(Long roomsId) {
        return roomsDAO.findRoomsByRoomsId(roomsId).orElseThrow(NullPointerException::new);
        //todo : rooms가 없을 때의 예외 정의
    }
}

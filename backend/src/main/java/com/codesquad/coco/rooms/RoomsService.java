package com.codesquad.coco.rooms;

import com.codesquad.coco.image.ImageDAO;
import com.codesquad.coco.rooms.model.Rooms;
import com.codesquad.coco.rooms.model.dto.*;
import com.codesquad.coco.utils.DTOConverter;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class RoomsService {

    private final RoomsDAO roomsDAO;
    private final ImageDAO imageDAO;

    public RoomsService(RoomsDAO roomsDAO, ImageDAO imageDAO) {
        this.roomsDAO = roomsDAO;
        this.imageDAO = imageDAO;
    }

    public PricesDTO findPricesBySearchPrice(SearchPriceDTO searchPriceDTO) {
        List<Integer> prices = roomsDAO.findPricesBySearchPrice(searchPriceDTO);
        return new PricesDTO(prices);
    }

    public List<RoomsListDTO> findRoomsBySearchRooms(SearchRoomsDTO roomsDTO) {
        List<Rooms> roomsList = roomsDAO.findRoomsBySearchRooms(roomsDTO);
        return roomsList.stream()
                .map(DTOConverter::roomsToRoomsListDTO)
                .collect(Collectors.toList());
    }

    public RoomsDetailDTO findRoomsDTOByRoomsId(Long roomsId) {
        Rooms rooms = roomsDAO.findRoomsByRoomsId(roomsId);
        return DTOConverter.roomsToRoomsDetailDTO(rooms);
        //todo : rooms가 없을 때의 예외 정의
    }
}

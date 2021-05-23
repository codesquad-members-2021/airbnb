package com.codesquad.coco.room;

import com.codesquad.coco.image.ImageDAO;
import com.codesquad.coco.room.model.Room;
import com.codesquad.coco.room.model.dto.*;
import com.codesquad.coco.utils.DTOConverter;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class RoomService {

    private final RoomDAO roomDAO;
    private final ImageDAO imageDAO;

    public RoomService(RoomDAO roomDAO, ImageDAO imageDAO) {
        this.roomDAO = roomDAO;
        this.imageDAO = imageDAO;
    }

    public PricesDTO findAllPriceDTO(SearchPriceDTO searchPriceDTO) {
        List<Integer> prices = roomDAO.findAllPriceBySearchPriceDTO(searchPriceDTO);
        return new PricesDTO(prices);
    }

    public List<RoomPreviewDTO> findAllRoomPreviewDTO(SearchRoomDTO roomDTO) {
        List<Room> rooms = roomDAO.findAllRoomBySearchRoomDTO(roomDTO);
        return rooms.stream()
                .map(DTOConverter::roomToRoomPreviewDTO)
                .collect(Collectors.toList());
    }

    public RoomDetailDTO findRoomDTO(Long roomId) {
        Room room = roomDAO.findRoomByRoomId(roomId);
        return DTOConverter.roomToRoomDetailDTO(room);
    }
}

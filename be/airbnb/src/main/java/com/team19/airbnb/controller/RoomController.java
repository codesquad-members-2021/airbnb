package com.team19.airbnb.controller;

import com.team19.airbnb.dto.RoomDetailResponseDTO;
import com.team19.airbnb.dto.RoomPriceRequestDTO;
import com.team19.airbnb.dto.RoomPriceResponseDTO;
import com.team19.airbnb.domain.room.Host;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@RestController
public class RoomController {

    @GetMapping("/rooms/{roomId}")
    public RoomDetailResponseDTO detailRoom(@PathVariable Long roomId) {
        List<String> images = new ArrayList<>();
        images.add("img1");
        images.add("img2");
        Host host = Host.create("Tree", "treeImg");
        return null;
    }

    @GetMapping("/rooms/{roomId}/price")
    public RoomPriceResponseDTO detailRoomPopup(@ModelAttribute RoomPriceRequestDTO roomPriceRequestDTO) {
        return new RoomPriceResponseDTO(new BigDecimal(5000), new BigDecimal(3500), new BigDecimal(12000), new BigDecimal(7000), new BigDecimal(50000));
    }
}

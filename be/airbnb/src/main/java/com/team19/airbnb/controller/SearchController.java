package com.team19.airbnb.controller;

import com.team19.airbnb.dto.RoomDetailResponseDTO;
import com.team19.airbnb.dto.SearchRequestDTO;
import com.team19.airbnb.domain.room.Host;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@RestController
public class SearchController {

    @GetMapping("/search/price/{location}")
    public int[] searchPriceRange(@PathVariable String location) {
        int[] ranges = new int[2];
        ranges[0] = 10000;
        ranges[1] = 15000;
        return ranges;
    }

    @GetMapping("/search")
    public List<RoomDetailResponseDTO> searchRoomsByCondition(@ModelAttribute SearchRequestDTO searchRequestDTO) {
       return null;
    }
}

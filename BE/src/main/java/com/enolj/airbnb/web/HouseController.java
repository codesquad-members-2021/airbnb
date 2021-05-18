package com.enolj.airbnb.web;

import com.enolj.airbnb.service.HouseService;
import com.enolj.airbnb.web.dto.SearchRequestDTO;
import com.enolj.airbnb.web.dto.SearchResponseDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class HouseController {

    private final HouseService houseService;
    private final Logger logger = LoggerFactory.getLogger(HouseController.class);

    public HouseController(HouseService houseService) {
        this.houseService = houseService;
    }

    @GetMapping("/houses")
    public List<SearchResponseDTO> searchHouses(@RequestBody SearchRequestDTO requestDTO) {
        logger.info("숙소 검색 요청");
        return houseService.searchHousesByCondition(requestDTO);
    }
}

package com.enolj.airbnb.web;

import com.enolj.airbnb.service.WishService;
import com.enolj.airbnb.web.dto.WishResponseDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class WishController {

    private final WishService wishService;
    private final Logger logger = LoggerFactory.getLogger(HouseController.class);

    public WishController(WishService wishService) {
        this.wishService = wishService;
    }

    @GetMapping("/wishes")
    public List<WishResponseDTO> getWishes(@RequestHeader String authorization) {
        logger.info("숙소 위시 리스트 요청");
        return wishService.getWishList(authorization);
    }

    @PostMapping("/wishes/{houseId}")
    public void changeWish(@RequestHeader String authorization, @PathVariable Long houseId) {
        logger.info("{}번 숙소의 위시 요청", houseId);
        wishService.changeWish(authorization, houseId);
    }
}

package com.team19.airbnb.controller;

import com.team19.airbnb.ResponseBody;
import com.team19.airbnb.domain.User;
import com.team19.airbnb.domain.Wishlist;
import com.team19.airbnb.dto.MainResponseDTO;
import com.team19.airbnb.domain.main.HeroBanner;
import com.team19.airbnb.domain.main.NearDestination;
import com.team19.airbnb.repository.UserDAO;
import com.team19.airbnb.repository.UserRepository;
import com.team19.airbnb.service.MainService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class MainController {

    private final MainService mainService;
    private final UserDAO userDAO;

    public MainController(MainService mainService, UserDAO userDAO) {
        this.mainService = mainService;
        this.userDAO = userDAO;
    }

    @GetMapping("/main")
    public ResponseBody<MainResponseDTO> main() {
        return ResponseBody.ok(mainService.main());
    }

    @GetMapping("/test")
    public Long test() {
       return userDAO.findById(1L).get().getWishlists().get(0).getRoom();
    }
}

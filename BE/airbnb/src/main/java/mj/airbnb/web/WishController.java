package mj.airbnb.web;

import mj.airbnb.oauth.GitHubUser;
import mj.airbnb.service.WishService;
import mj.airbnb.web.dto.WishResponseDto;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/wishes")
public class WishController {

    private final WishService wishService;

    public WishController(WishService wishService) {
        this.wishService = wishService;
    }

    @GetMapping
    public List<WishResponseDto> viewWishes(@RequestAttribute GitHubUser user) {
        return wishService.findAllByUserId(user.getId());
    }
}


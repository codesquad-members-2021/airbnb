package mj.airbnb.web;

import mj.airbnb.oauth.GitHubUser;
import mj.airbnb.service.WishService;
import mj.airbnb.web.dto.ReservationResponseDto;
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

//    @PostMapping
//    @ResponseStatus(HttpStatus.CREATED)
//    public CreatingReservationResponseDto createWish(@RequestBody CreatingWishRequestDto requestDto, @RequestAttribute GitHubUser user) {
//        requestDto.setUserId(user.getId());
//
//        return wishService.createWish(requestDto);
//    }
//
//    @DeleteMapping("/{reservationId}")
//    @ResponseStatus(HttpStatus.NO_CONTENT)
//    public void deleteWish(@PathVariable Long wishId) {
//        wishService.deleteWish(wishId);
//    }
}


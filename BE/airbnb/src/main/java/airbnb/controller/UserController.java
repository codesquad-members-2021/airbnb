package airbnb.controller;

import airbnb.auth.annotation.Github;
import airbnb.auth.annotation.LoginRequired;
import airbnb.domain.User;
import airbnb.response.WishResponse;
import airbnb.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class UserController {
    private final UserService userService;

    @LoginRequired
    @PostMapping("/wish/rooms/{roomId}")
    public String saveWish(@PathVariable Long roomId, @Github User user) {
        return userService.saveWish(roomId, user);
    }

    @LoginRequired
    @DeleteMapping("/wishlist/{wishId}")
    public void removeWish(@PathVariable Long wishId, @Github User user) {
        userService.removeWish(wishId, user);
    }

    @LoginRequired
    @GetMapping("/wishlist")
    public List<WishResponse> viewWishList(@Github User user) {
        return userService.getWishList(user);
    }
}

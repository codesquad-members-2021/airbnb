package airbnb.controller;

import airbnb.auth.annotation.Github;
import airbnb.auth.annotation.LoginRequired;
import airbnb.domain.Room;
import airbnb.domain.User;
import airbnb.domain.Wish;
import airbnb.exception.RoomNotFoundException;
import airbnb.repository.RoomRepository;
import airbnb.repository.UserRepository;
import airbnb.response.WishResponse;
import airbnb.service.UserService;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class UserController {
    private final Logger logger = LoggerFactory.getLogger(UserController.class);
    private final UserService userService;

    @LoginRequired
    @PostMapping("/wish/rooms/{roomId}")
    public ResponseEntity<String> wish(@PathVariable Long roomId, @Github User user) {
        return ResponseEntity.ok(userService.saveWish(roomId, user));
    }

    @GetMapping("/wishlist")
    public ResponseEntity<List<WishResponse>> viewWishList() {
        List<WishResponse> wishList = new ArrayList<>();
        List<String> room1images = new ArrayList<>();
        room1images.add("https://a0.muscache.com/im/pictures/miso/Hosting-44552310/original/3914cc46-8881-41cd-8090-33e679305107.jpeg?im_w=1200");
        List<String> room2images = new ArrayList<>();
        room2images.add("https://a0.muscache.com/im/pictures/dd9e507a-ea75-4634-bbdd-77c2ceb9adbf.jpg?im_w=1200");
        WishResponse room1 = new WishResponse(room1images, 4.23, "제인네집", 994375);
        WishResponse room2 = new WishResponse(room2images, 4.73, "갯배도보5분/스카이씨리조트1316호", 114375);
        wishList.add(room1);
        wishList.add(room2);
        return ResponseEntity.ok(wishList);
    }
}

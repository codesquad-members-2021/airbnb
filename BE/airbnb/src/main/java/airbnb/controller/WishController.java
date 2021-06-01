package airbnb.controller;

import airbnb.response.RoomResponse;
import airbnb.response.WishResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class WishController {
    @PostMapping("/wish/rooms/{roomId}")
    public ResponseEntity<String> wish(@PathVariable Long roomId) {
        return new ResponseEntity<>("저장 완료", HttpStatus.OK);
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

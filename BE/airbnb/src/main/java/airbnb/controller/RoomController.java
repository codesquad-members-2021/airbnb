package airbnb.controller;

import airbnb.request.SearchRequest;
import airbnb.response.RoomDetailPageResponse;
import airbnb.response.RoomResponses;
import airbnb.service.RoomService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class RoomController {
    private final RoomService roomService;

    @GetMapping("/rooms")
    public ResponseEntity<RoomResponses> search(SearchRequest searchRequest) {
        return new ResponseEntity<>(roomService.findRoomsFilteredBy(searchRequest), HttpStatus.OK);
    }

    @GetMapping("/rooms/{roomId}")
    public ResponseEntity<RoomDetailPageResponse> viewDetailPage(@PathVariable Long roomId) {
        List<String> roomImages = new ArrayList<>();
        roomImages.add("https://a0.muscache.com/im/pictures/a317fbfd-e121-4bcb-ac8b-f5720aaa016d.jpg?im_w=1200");
        roomImages.add("https://a0.muscache.com/im/pictures/8a518449-1d87-4f5b-91db-e40e759db974.jpg?im_w=720");
        roomImages.add("https://a0.muscache.com/im/pictures/cd05cf09-c7cf-4058-b6eb-f030bd4b76f4.jpg?im_w=720");
        roomImages.add("https://a0.muscache.com/im/pictures/4725d94b-3f3b-4567-b5d1-bb08a3a131a0.jpg?im_w=720");
        roomImages.add("https://a0.muscache.com/im/pictures/9273d0a4-a6de-422f-a33b-ea7f78c36504.jpg?im_w=720");
        String title = "Seoul Sunday House (동대문/동묘역 가족 친구여행 2인기준, 주차 불가)";
        String roomDescription = "서울 동대문 상가 위치에 있고 ,도매시장 두타 면세점 ,동묘역 빈티지시장 등 과 가깝습니다. 공항버스랑 지하철 역 도보 5분입니다\n" +
                "성인 2명 가격기준, 아이 6살 이하 무료,성인 한명 추가시 20000 원 추가 됩니다.";
        double rating = 4.7;
        String host = "제인";
        String hostImage = "https://a0.muscache.com/im/pictures/user/524726c2-8633-479c-b7a7-88d964f3c713.jpg?im_w=240";
        int pricePerNight = 85000;
        RoomDetailPageResponse detailPage = new RoomDetailPageResponse(roomImages, title, roomDescription, rating, host, hostImage, pricePerNight);
        return ResponseEntity.ok(detailPage);
    }
}

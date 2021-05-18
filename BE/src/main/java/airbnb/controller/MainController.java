package airbnb.controller;

import airbnb.Category;
import airbnb.CityResponse;
import airbnb.MainMockResponse;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class MainController {

    @GetMapping("/main")
    public MainMockResponse showMain(){
        CityResponse seoul = new CityResponse(1L,"서울", "https://a0.muscache.com/im/pictures/71e23854-a3c7-491c-b715-6e86233a293f.jpg?im_q=medq&im_w=240",0);
        CityResponse gyeonggi = new CityResponse(2L, "경기도", "https://a0.muscache.com/im/pictures/a0eb36e7-b468-4c5e-93b2-819e793563b2.jpg?im_q=medq&im_w=240", 5);
        CityResponse cityResponse1 = new CityResponse(3L, "강원도", "https://a0.muscache.com/im/pictures/926d56aa-8b36-4138-8eae-ad991868b858.jpg?im_q=medq&im_w=240", 10);
        CityResponse cityResponse2 = new CityResponse(4L, "충청도", "https://a0.muscache.com/im/pictures/f7736f4a-f8b9-4527-b46c-d0d8df856984.jpg?im_q=medq&im_w=240", 30);
        CityResponse cityResponse3 = new CityResponse(5L, "전라남도", "https://a0.muscache.com/im/pictures/558a403a-aeed-4829-83a6-c9b0ccf21866.jpg?im_q=medq&im_w=240", 50);
        CityResponse cityResponse4 = new CityResponse(6L, "전라북도", "https://a0.muscache.com/im/pictures/a161fb95-6875-4aaa-aecd-3a46dead3220.jpg?im_q=medq&im_w=240", 60);
        CityResponse cityResponse5 = new CityResponse(7L, "경상남도", "https://a0.muscache.com/im/pictures/31e445ed-8b69-477b-aefd-d04dae6d0bb1.jpg?im_q=medq&im_w=240", 80);
        CityResponse cityResponse6 = new CityResponse(8L, "경상북도", "https://a0.muscache.com/im/pictures/087a8dff-a609-4084-86db-f45051c6f23a.jpg?im_q=medq&im_w=240", 90);


        List<CityResponse> cityResponseList = new ArrayList<>();
        cityResponseList.add(seoul);
        cityResponseList.add(gyeonggi);
        cityResponseList.add(cityResponse1);
        cityResponseList.add(cityResponse2);
        cityResponseList.add(cityResponse3);
        cityResponseList.add(cityResponse4);
        cityResponseList.add(cityResponse5);
        cityResponseList.add(cityResponse6);

        Category category1 = new Category("자연생활을 만끽 할 수 있는 숙소", "https://a0.muscache.com/im/pictures/36f53e61-db8d-403c-9122-5b761c0e4264.jpg?im_w=480");
        Category category2 = new Category("독특한 공간", "https://a0.muscache.com/im/pictures/2f13349d-879d-43c6-83e3-8e5679291d53.jpg?im_w=480");
        Category category3 = new Category("집 전체", "https://a0.muscache.com/im/pictures/7d82ca14-56e5-4465-8218-dcfa7d69b6ac.jpg?im_w=480");
        Category category4 = new Category("반려 동물과 함께 할 수 있는 공간", "https://a0.muscache.com/im/pictures/10a638e1-6aff-4313-8033-1275cec83987.jpg?im_w=480");
        List<Category> categories = new ArrayList<>();
        categories.add(category1);
        categories.add(category2);
        categories.add(category3);
        categories.add(category4);

        return new MainMockResponse("https://a0.muscache.com/im/pictures/ddc7f01f-3fb3-483c-87e6-701dad52c930.jpg?im_w=1920",cityResponseList,categories);
    }
}

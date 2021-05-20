package com.example.airbnb.service;

import com.example.airbnb.dto.MainPageDTO;
import com.example.airbnb.dto.RecommendedDTO;
import com.example.airbnb.dto.ThemeDTO;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SuggestionsService {
    private static List<RecommendedDTO> recommendedDTOList = new ArrayList<>();
    private static List<ThemeDTO> themeDTOList = new ArrayList<>();

    static {
        recommendedDTOList.add(new RecommendedDTO("서울","차로 30분 거리","https://github.com/d-h-k/airbnb/blob/dev-BE/images/city/71e23854-a3c7-491c-b715-6e86233a293f.jpeg?raw=true"));
        recommendedDTOList.add(new RecommendedDTO("인천","차로 1시간 거리","https://github.com/d-h-k/airbnb/blob/dev-BE/images/city/31e445ed-8b69-477b-aefd-d04dae6d0bb1.jpeg?raw=true"));
        recommendedDTOList.add(new RecommendedDTO("의정부","차로 1시간 거리","https://github.com/d-h-k/airbnb/blob/dev-BE/images/city/558a403a-aeed-4829-83a6-c9b0ccf21866.jpeg?raw=true"));
        recommendedDTOList.add(new RecommendedDTO("대구","차로 4시간 거리","https://github.com/d-h-k/airbnb/blob/dev-BE/images/city/f7736f4a-f8b9-4527-b46c-d0d8df856984.jpeg?raw=true"));
        recommendedDTOList.add(new RecommendedDTO("대전","차로 2시간 거리","https://github.com/d-h-k/airbnb/blob/dev-BE/images/city/a0eb36e7-b468-4c5e-93b2-819e793563b2.jpeg?raw=true"));
        recommendedDTOList.add(new RecommendedDTO("광주","차로 4시간 거리","https://github.com/d-h-k/airbnb/blob/dev-BE/images/city/087a8dff-a609-4084-86db-f45051c6f23a.jpeg?raw=true"));
        recommendedDTOList.add(new RecommendedDTO("울산","차로 5시간 거리","https://github.com/d-h-k/airbnb/blob/dev-BE/images/city/76e5f1c6-a788-418c-a28b-f0ee29cffd41.jpeg?raw=true"));
        recommendedDTOList.add(new RecommendedDTO("수원","차로 1시간 거리","https://github.com/d-h-k/airbnb/blob/dev-BE/images/city/a0eb36e7-b468-4c5e-93b2-819e793563b2.jpeg?raw=true"));

        themeDTOList.add(new ThemeDTO("자연생활을 만끽할 수 있는 숙소","https://github.com/d-h-k/airbnb/blob/dev-BE/images/theme/7f254627-3922-4880-b8fa-545b8551117e.jpeg?raw=true"));
        themeDTOList.add(new ThemeDTO("독특한 공간","https://github.com/d-h-k/airbnb/blob/dev-BE/images/theme/36f53e61-db8d-403c-9122-5b761c0e4264.jpeg?raw=true"));
        themeDTOList.add(new ThemeDTO("집 전체","https://github.com/d-h-k/airbnb/blob/dev-BE/images/theme/7d82ca14-56e5-4465-8218-dcfa7d69b6ac.jpeg?raw=true"));
        themeDTOList.add(new ThemeDTO("반려동물 동반 가능","https://github.com/d-h-k/airbnb/blob/dev-BE/images/theme/10a63pet-6aff-4313-8033-1275cec83987.jpeg?raw=true"));
    }

    public static MainPageDTO mainPage() {
        return new MainPageDTO(recommendedDTOList,themeDTOList);
    }
}

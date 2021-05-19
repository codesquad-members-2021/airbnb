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
        recommendedDTOList.add(new RecommendedDTO("서울","차로 30분 거리",""));
        recommendedDTOList.add(new RecommendedDTO("인천","차로 1시간 거리",""));
        recommendedDTOList.add(new RecommendedDTO("의정부시","차로 1시간 거리",""));
        recommendedDTOList.add(new RecommendedDTO("대구","차로 4시간 거리",""));
        recommendedDTOList.add(new RecommendedDTO("대전","차로 2시간 거리",""));
        recommendedDTOList.add(new RecommendedDTO("광주","차로 4시간 거리",""));


        themeDTOList.add(new ThemeDTO("자연생활을 만끽할 수 있는 숙소",""));
        themeDTOList.add(new ThemeDTO("독특한 공간",""));
        themeDTOList.add(new ThemeDTO("집 전체",""));
        themeDTOList.add(new ThemeDTO("반려동물 동반 가능",""));
    }

    public static MainPageDTO mainPage() {




        return new MainPageDTO(recommendedDTOList,themeDTOList);
    }
}

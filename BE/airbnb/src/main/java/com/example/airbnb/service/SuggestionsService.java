package com.example.airbnb.service;

import com.example.airbnb.dto.MainPageDTO;
import com.example.airbnb.dto.RecommendedDTO;
import com.example.airbnb.dto.ThemeDTO;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SuggestionsService {
    public static MainPageDTO mainPage() {

        List<RecommendedDTO> recommendedDTOList = new ArrayList<>();
        List<ThemeDTO> themeDTOList = new ArrayList<>();
        new ThemeDTO();
        new RecommendedDTO();


        return new MainPageDTO(recommendedDTOList,themeDTOList);
    }
}

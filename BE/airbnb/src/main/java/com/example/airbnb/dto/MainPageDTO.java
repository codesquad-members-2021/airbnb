package com.example.airbnb.dto;

import java.util.List;

public class MainPageDTO {
    List<RecommendedDTO> recommendedList;
    List<ThemeDTO> themeList;

    public MainPageDTO(List<RecommendedDTO> recommendedDTOList, List<ThemeDTO> themeDTOList) {
        this.recommendedList = recommendedDTOList;
        this.themeList = themeDTOList;
    }

    public List<RecommendedDTO> getRecommendedList() {
        return recommendedList;
    }

    public void setRecommendedList(List<RecommendedDTO> recommendedList) {
        this.recommendedList = recommendedList;
    }

    public List<ThemeDTO> getThemeList() {
        return themeList;
    }

    public void setThemeList(List<ThemeDTO> themeList) {
        this.themeList = themeList;
    }

    @Override
    public String toString() {
        return "MainPageDTO{" +
                "recommendedList=" + recommendedList +
                ", themeList=" + themeList +
                '}';
    }
}

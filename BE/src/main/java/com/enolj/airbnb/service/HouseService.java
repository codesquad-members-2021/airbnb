package com.enolj.airbnb.service;

import com.enolj.airbnb.web.dto.Location;
import com.enolj.airbnb.web.dto.SearchChargesRequestDTO;
import com.enolj.airbnb.web.dto.SearchRequestDTO;
import com.enolj.airbnb.web.dto.SearchResponseDTO;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class HouseService {

    public List<SearchResponseDTO> searchHousesByCondition(SearchRequestDTO requestDTO) {
        System.out.println(requestDTO);
        List<SearchResponseDTO> searchResponseDTOList = new ArrayList<>();
        searchResponseDTOList.add(new SearchResponseDTO(1, "https://user-images.githubusercontent.com/63284310/118603297-b2839780-b7ee-11eb-9096-c0fba9792163.jpeg",
                new Location(37.566826, 126.9786567), "Specious and Comfortable cozy house #4",
                15400, 4.60, 270, "강남역 5번 출구에서 도보로 이동가능합니다. ...", "최대 인원 3명 • 원룸 • 침대 1개 • 욕실 1개 ..."));
        searchResponseDTOList.add(new SearchResponseDTO(2, "https://user-images.githubusercontent.com/63284310/118603297-b2839780-b7ee-11eb-9096-c0fba9792163.jpeg",
                new Location(37.566826, 126.9786567), "Specious and Comfortable cozy house #4",
                15400, 4.60, 270, "강남역 5번 출구에서 도보로 이동가능합니다. ...", "최대 인원 3명 • 원룸 • 침대 1개 • 욕실 1개 ..."));
        return searchResponseDTOList;
    }

    public List<Integer> searchChargesByCondition(SearchChargesRequestDTO requestDTO) {
        System.out.println(requestDTO);
        List<Integer> charges = new ArrayList<>();
        charges.add(1000);
        charges.add(1000);
        charges.add(1100);
        charges.add(1150);
        charges.add(1150);
        charges.add(3000);
        charges.add(5000);
        charges.add(10000);
        charges.add(100000);
        return charges;
    }
}

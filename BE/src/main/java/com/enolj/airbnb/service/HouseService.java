package com.enolj.airbnb.service;

import com.enolj.airbnb.domain.house.House;
import com.enolj.airbnb.domain.house.HouseDAO;
import com.enolj.airbnb.domain.image.Image;
import com.enolj.airbnb.domain.image.ImageDAO;
import com.enolj.airbnb.exception.EntityNotFoundException;
import com.enolj.airbnb.web.dto.*;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

import static com.enolj.airbnb.web.dto.HouseDetailInfoResponseDTO.createHouseDetailInfoResponseDTO;
import static com.enolj.airbnb.web.dto.SearchResponseDTO.createSearchResponseDTO;

@Service
public class HouseService {

    private final HouseDAO houseDAO;
    private final ImageDAO imageDAO;

    public HouseService(HouseDAO houseDAO, ImageDAO imageDAO) {
        this.houseDAO = houseDAO;
        this.imageDAO = imageDAO;
    }

    public List<SearchResponseDTO> searchHousesByCondition(SearchRequestDTO requestDTO) {
        return houseDAO.findAll().stream()
                .filter(house -> house.checkCharge(requestDTO.getMinCharge(), requestDTO.getMaxCharge()))
                .filter((house -> house.checkLocation(requestDTO.getLatitude(), requestDTO.getLongitude())))
                .map(house -> createSearchResponseDTO(house, findOneImageByHouseId(house.getId())))
                .collect(Collectors.toList());
    }

    public List<Integer> searchChargesByCondition(SearchChargesRequestDTO requestDTO) {
        return houseDAO.findAll().stream()
                .map(House::getCharge)
                .collect(Collectors.toList());
    }

    public HouseDetailInfoResponseDTO getHouseDetailInfo(Long houseId) {
        return createHouseDetailInfoResponseDTO(findHouseById(houseId), findAllImageByHouseId(houseId));
    }

    private Image findOneImageByHouseId(Long houseId) {
        return imageDAO.findAll(houseId).stream()
                .findFirst()
                .orElseThrow(EntityNotFoundException::new);
    }

    private List<String> findAllImageByHouseId(Long houseId) {
        return imageDAO.findAll(houseId).stream()
                .map(Image::getUrl)
                .collect(Collectors.toList());
    }

    private House findHouseById(Long houseId) {
        return houseDAO.findById(houseId).orElseThrow(EntityNotFoundException::new);
    }
}

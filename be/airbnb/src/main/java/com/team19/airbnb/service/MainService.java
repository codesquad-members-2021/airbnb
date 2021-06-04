package com.team19.airbnb.service;

import com.team19.airbnb.dto.MainResponseDTO;
import com.team19.airbnb.repository.HeroBannerDAO;
import com.team19.airbnb.repository.NearDestinationDAO;
import org.springframework.stereotype.Service;

@Service
public class MainService {

    private final HeroBannerDAO heroBannerDAO;
    private final NearDestinationDAO nearDestinationDAO;

    public MainService(HeroBannerDAO heroBannerDAO, NearDestinationDAO nearDestinationDAO) {
        this.heroBannerDAO = heroBannerDAO;
        this.nearDestinationDAO = nearDestinationDAO;
    }

    public MainResponseDTO main() {
        return MainResponseDTO.create(heroBannerDAO.findAll(), nearDestinationDAO.findAll());
    }
}

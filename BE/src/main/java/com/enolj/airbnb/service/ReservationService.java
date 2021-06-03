package com.enolj.airbnb.service;

import com.enolj.airbnb.domain.house.House;
import com.enolj.airbnb.domain.house.HouseDAO;
import com.enolj.airbnb.domain.image.Image;
import com.enolj.airbnb.domain.image.ImageDAO;
import com.enolj.airbnb.domain.join.Join;
import com.enolj.airbnb.domain.join.JoinDAO;
import com.enolj.airbnb.domain.user.User;
import com.enolj.airbnb.domain.user.UserDAO;
import com.enolj.airbnb.exception.EntityNotFoundException;
import com.enolj.airbnb.web.dto.ReservationDetailDTO;
import com.enolj.airbnb.web.dto.ReservationInfoResponseDTO;
import com.enolj.airbnb.web.dto.ReservationRequestDTO;
import com.enolj.airbnb.web.dto.ReservationResponseDTO;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

import static com.enolj.airbnb.service.UserService.getUserFromAuthorization;
import static com.enolj.airbnb.web.dto.ReservationDetailDTO.createReservationDetailDTO;
import static com.enolj.airbnb.web.dto.ReservationInfoResponseDTO.createReservationInfoResponseDTO;
import static com.enolj.airbnb.web.dto.ReservationResponseDTO.createReservationResponseDTO;

@Service
public class ReservationService {

    private final UserDAO userDAO;
    private final HouseDAO houseDAO;
    private final ImageDAO imageDAO;
    private final JoinDAO joinDAO;

    public ReservationService(UserDAO userDAO, HouseDAO houseDAO, ImageDAO imageDAO, JoinDAO joinDAO) {
        this.userDAO = userDAO;
        this.houseDAO = houseDAO;
        this.imageDAO = imageDAO;
        this.joinDAO = joinDAO;
    }

    public ReservationInfoResponseDTO getReservationInfo(Long houseId) {
        return createReservationInfoResponseDTO(findHouseById(houseId));
    }

    public void makeReservation(String authorization, Long houseId, ReservationRequestDTO requestDTO) {
        Join join = requestDTO.toEntity();
        join.reservation(getUserFromAuthorization(userDAO, authorization), findHouseById(houseId));
        joinDAO.save(join);
    }

    public List<ReservationResponseDTO> getReservationList(String authorization) {
        User user = getUserFromAuthorization(userDAO, authorization);
        return joinDAO.findAllByUserId(user.getId()).stream()
                .map(join -> createReservationResponseDTO(findHouseById(join.getUserId()), join, findOneImageByHouseId(join.getHouseId())))
                .collect(Collectors.toList());
    }

    public ReservationDetailDTO getReservationDetail(String authorization, Long houseId) {
        User user = getUserFromAuthorization(userDAO, authorization);
        House house = findHouseById(houseId);
        Join join = findJoinByUserIdAndHouseId(user.getId(), house.getId());
        List<String> images = imageDAO.findAll(house.getId()).stream()
                .map(Image::getUrl)
                .collect(Collectors.toList());
        return createReservationDetailDTO(house, images, join);
    }

    public void cancelReservation(String authorization, Long houseId) {
        User user = getUserFromAuthorization(userDAO, authorization);
        House house = findHouseById(houseId);
        joinDAO.delete(findJoinByUserIdAndHouseId(user.getId(), house.getId()));
    }

    private House findHouseById(Long houseId) {
        return houseDAO.findById(houseId).orElseThrow(EntityNotFoundException::new);
    }

    private Image findOneImageByHouseId(Long houseId) {
        return imageDAO.findAll(houseId).stream()
                .findFirst()
                .orElseThrow(EntityNotFoundException::new);
    }

    private Join findJoinByUserIdAndHouseId(Long userId, Long houseId) {
        return joinDAO.findByUserIdAndHouseId(userId, houseId).orElseThrow(EntityNotFoundException::new);
    }
}

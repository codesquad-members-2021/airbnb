package com.codesquad.coco.user;

import com.codesquad.coco.exception.business.TotalPriceNonMatchException;
import com.codesquad.coco.oauth.gitoauth.GitOauth;
import com.codesquad.coco.oauth.gitoauth.GitUserInfoDTO;
import com.codesquad.coco.room.RoomDAO;
import com.codesquad.coco.room.model.Room;
import com.codesquad.coco.user.model.ReservationStatus;
import com.codesquad.coco.user.model.dto.ReservationDTO;
import com.codesquad.coco.utils.LocalDateUtil;
import oauth.AccessToken;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private ReservationDAO reservationDAO;
    private RoomDAO roomDAO;
    private UserDAO userDAO;

    public UserService(ReservationDAO reservationDAO, RoomDAO roomDAO, UserDAO userDAO) {
        this.reservationDAO = reservationDAO;
        this.roomDAO = roomDAO;
        this.userDAO = userDAO;
    }

    public void reservation(Long roomId, Long userId, ReservationDTO reservationDTO) {

        Room room = roomDAO.findById(roomId);
        int fewNights = LocalDateUtil.getAccommodationDay(reservationDTO.getCheckIn(), reservationDTO.getCheckOut());
        int totalPrice = room.calcTotalPrice(fewNights);

        room.reservationAvailabilityCheck(reservationDTO.getCheckIn(), reservationDTO.getCheckOut());
        room.capacityCheck(reservationDTO.getAdult(), reservationDTO.getChild());
        if (totalPrice != reservationDTO.getTotalPrice()) {
            throw new TotalPriceNonMatchException(totalPrice);
        }
        reservationDAO.reservation(roomId, userId, reservationDTO, ReservationStatus.RESERVED);
    }

    public void cancelReservation(Long roomId, Long reservationId, Long userId) {
        reservationDAO.cancelReservation(roomId, reservationId, userId, ReservationStatus.CANCEL);
    }

    public void insertUser(GitUserInfoDTO userInfo, AccessToken accessToken) {
        if (userDAO.countUserById(userInfo) != 0) {
            userDAO.updateUser(userInfo, accessToken);
            return;
        }
        userDAO.insertUser(userInfo, accessToken);
        return;
    }

    public GitUserInfoDTO loginByGitOauth(GitOauth gitOauth, String code) {
        AccessToken accessToken = gitOauth.requestAccessToken(code);
        GitUserInfoDTO userInfo = gitOauth.requestUserInfo(accessToken);
        insertUser(userInfo, accessToken);
        return userInfo;
    }
}

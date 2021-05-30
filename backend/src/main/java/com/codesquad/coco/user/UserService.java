package com.codesquad.coco.user;

import com.codesquad.coco.global.exception.business.TotalPriceNonMatchException;
import com.codesquad.coco.global.exception.common.NotFoundUser;
import com.codesquad.coco.oauth.gitoauth.GitHubDeviceType;
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
    private GitOauth oauth;

    public UserService(ReservationDAO reservationDAO, RoomDAO roomDAO, UserDAO userDAO, GitOauth oauth) {
        this.reservationDAO = reservationDAO;
        this.roomDAO = roomDAO;
        this.userDAO = userDAO;
        this.oauth = oauth;
    }

    public void reservation(Long roomId, Long userId, ReservationDTO reservationDTO) {

        membershipCheck(userId);

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

        membershipCheck(userId);
        reservationDAO.cancelReservation(roomId, reservationId, userId, ReservationStatus.CANCEL);
    }

    private void membershipCheck(Long userId) {
        if (userDAO.countUserByGitId(userId) == 0) {
            throw new NotFoundUser();
        }
    }

    public GitUserInfoDTO loginByGitOauth(String code, GitHubDeviceType gitHubDeviceType) {
        oauth.changeType(gitHubDeviceType);
        AccessToken accessToken = oauth.requestAccessToken(code);
        GitUserInfoDTO userInfo = oauth.requestUserInfo(accessToken);
        insertUser(userInfo, accessToken);
        return userInfo;
    }

    public void insertUser(GitUserInfoDTO userInfo, AccessToken accessToken) {
        if (userDAO.countUserByGitId(userInfo.getId()) != 0) {
            userDAO.updateUser(userInfo, accessToken);
            return;
        }
        userDAO.insertUser(userInfo, accessToken);
        return;
    }
}

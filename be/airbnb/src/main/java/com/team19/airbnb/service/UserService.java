package com.team19.airbnb.service;

import com.team19.airbnb.domain.User;
import com.team19.airbnb.domain.Wishlist;
import com.team19.airbnb.dto.RoomDetailResponseDTO;
import com.team19.airbnb.exception.notfound.RoomNotFoundException;
import com.team19.airbnb.exception.notfound.UserNotFoundException;
import com.team19.airbnb.repository.RoomDAO;
import com.team19.airbnb.repository.UserDAO;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class UserService {

    private final UserDAO userDAO;
    private final RoomService roomService;

    public UserService(UserDAO userDAO, RoomService roomService) {
        this.userDAO = userDAO;
        this.roomService = roomService;
    }

    public User findUserById(Long id) {
        return userDAO.findById(id).orElseThrow(UserNotFoundException::new);
    }
  
    public List<RoomDetailResponseDTO> showWishLists(Long userId) {
        List<Wishlist> wishlists = userDAO.findById(userId).orElseThrow(UserNotFoundException::new).getWishlists();
        return wishlists.stream().map(Wishlist::getRoom)
                .map(roomId -> roomService.findRoomById(roomId))
                        .map( room -> new RoomDetailResponseDTO.Builder(room).build())
                .collect(Collectors.toList());
    }
}

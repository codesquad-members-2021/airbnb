package airbnb.service;

import airbnb.auth.GithubUser;
import airbnb.domain.Room;
import airbnb.domain.User;
import airbnb.domain.Wish;
import airbnb.exception.UserNotFoundException;
import airbnb.repository.UserRepository;
import airbnb.response.Status;
import airbnb.response.WishResponse;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.List;

import static airbnb.response.Status.FAIL;
import static airbnb.response.Status.SUCCESS;

@Service
@RequiredArgsConstructor
public class UserService {
    private static final Logger logger = LoggerFactory.getLogger(UserService.class);
    private final UserRepository userRepository;
    private final RoomService roomService;

    public User findLoginUser(GithubUser githubUser) {
        if (!isDuplicate(githubUser)) {
            logger.debug("{}님이 회원가입하셨습니다.", githubUser.getGithubId());
            User user = githubUser.createUser();
            userRepository.save(user);
            return user;
        }
        return userRepository.findByGithubId(githubUser.getGithubId()).orElseThrow(UserNotFoundException::new);
    }

    private boolean isDuplicate(GithubUser githubUser) {
        return userRepository.findByGithubId(githubUser.getGithubId()).isPresent();
    }

    public User findUserById(Long id) {
        return userRepository.findById(id).orElseThrow(UserNotFoundException::new);
    }

    public User findUserByGithubId(String githubId) {
        return userRepository.findByGithubId(githubId).orElseThrow(UserNotFoundException::new);
    }

    public String saveWish(Long roomId, User githubUser) {
        User user = findUserByGithubId(githubUser.getGithubId());
        Room room = roomService.findRoomById(roomId);

        if (user.addWish(room).isPresent()) {
            userRepository.save(user);
            return Status.message(room.getName(), SUCCESS);
        }

        return Status.message(room.getName(), FAIL);
    }

    public void removeWish(Long wishId, User githubUser) {
        User user = findUserByGithubId(githubUser.getGithubId());
        user.getWishes().stream()
                .filter(w -> w.getId().equals(wishId))
                .findFirst().ifPresent(Wish::removeWish);
        userRepository.save(user);
    }

    public List<WishResponse> getWishList(User githubUser) {
        User user = findUserByGithubId(githubUser.getGithubId());
        return Wish.createWishListResponse(user.getWishes());
    }
}

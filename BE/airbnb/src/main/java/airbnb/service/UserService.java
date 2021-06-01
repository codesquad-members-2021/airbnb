package airbnb.service;

import airbnb.auth.GithubUser;
import airbnb.domain.Room;
import airbnb.domain.User;
import airbnb.domain.Wish;
import airbnb.exception.RoomNotFoundException;
import airbnb.exception.UserNotFoundException;
import airbnb.repository.RoomRepository;
import airbnb.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserService {
    private static final Logger logger = LoggerFactory.getLogger(UserService.class);
    private final UserRepository userRepository;
    private final RoomService roomService;

    public User findLoginUser(GithubUser githubUser) {
        if (!isDuplicate(githubUser)) {
            logger.debug("{}님이 회원가입하셨습니다.", githubUser.getGithubId());
            User user = GithubUser.createUser(githubUser);
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

    public String saveWish(Long roomId, User user) {
        Room room = roomService.findRoomById(roomId);
        Wish wish = new Wish(user, room);
        user.addWish(wish);
        userRepository.save(user);
        return room.getName() + " 위시리스트에 저장 완료";
    }
}

package com.codesquad.airbnb.web.service.users;

import com.codesquad.airbnb.web.domain.User;
import com.codesquad.airbnb.web.domain.UserRepository;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void save(User user) {
        userRepository.save(user);
    }
}

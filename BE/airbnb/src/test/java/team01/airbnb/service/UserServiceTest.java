package team01.airbnb.service;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;
import team01.airbnb.domain.User;
import team01.airbnb.dto.RoleType;
import team01.airbnb.exception.NoResultSetException;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.catchThrowable;

@ExtendWith(SpringExtension.class)
@SpringBootTest
class UserServiceTest {

    @Autowired
    private UserService userService;

    @Transactional
    @Test
    void catchException() {
        //when
        Throwable thrown = catchThrowable(() -> {
            User user = new User();
            user.setUsername("김안녕");
            user.setEmail("hello@naver.com");
            user.setRole(RoleType.USER);

            userService.findByUser(user);
        });

        //then
        assertThat(thrown)
                .isInstanceOf(NoResultSetException.class)
                .hasMessageContaining("ResultSet 결과를 찾을 수 없습니다.");
    }
}
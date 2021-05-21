package team01.airbnb.config.interceptor;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import team01.airbnb.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Slf4j
public class LogoutInterceptor implements HandlerInterceptor {

    @Autowired
    private HttpSession httpSession;

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        log.info("[ LogoutInterceptor postHandle ]");
        httpSession.removeAttribute("user");
        httpSession.removeAttribute("access_token");
    }
}

package airbnb.controller;

import airbnb.MainMockResponse;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

    @GetMapping("/main")
    public MainMockResponse showMain(){
        return new MainMockResponse();
    }
}

package airbnb.domain;

import org.springframework.data.annotation.Id;

public class City {
    @Id
    private Long id;
    private String name;
}

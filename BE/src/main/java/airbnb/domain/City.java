package airbnb.domain;

import org.springframework.data.annotation.Id;

public class City {

    @Id
    private Long id;
    private String name;

    public City(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }
}

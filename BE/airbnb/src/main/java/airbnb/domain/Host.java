package airbnb.domain;

import org.springframework.data.annotation.Id;

public class Host {
    @Id
    private Long id;

    private String name;
    private String profileImage;
    private int numberOfReviews;

}

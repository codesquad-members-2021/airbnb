package team01.airbnb.domain;


import lombok.*;

@ToString
@Getter
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class Amenity {

    private Long id;
    private String name;

}

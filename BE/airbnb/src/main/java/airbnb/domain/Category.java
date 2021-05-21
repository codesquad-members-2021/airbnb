package airbnb.domain;

import lombok.Getter;

@Getter
public class Category {
    String name;
    String image;

    public Category(String name, String image) {
        this.name = name;
        this.image = image;
    }
}

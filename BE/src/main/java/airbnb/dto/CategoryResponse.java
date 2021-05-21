package airbnb.dto;

import airbnb.domain.Category;

public class CategoryResponse {

    private final Long id;
    private final String name;
    private final String image;

    private CategoryResponse(Builder builder) {
        this.id = builder.id;
        this.name = builder.name;
        this.image = builder.image;
    }

    public static class Builder {

        private final Long id;
        private final String name;

        private String image;

        public Builder(Long id, String name) {
            this.id = id;
            this.name = name;
        }


        public Builder image(String image) {
            this.image = image;
            return this;
        }


        public CategoryResponse build() {
            return new CategoryResponse(this);
        }
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getImage() {
        return image;
    }

    public static CategoryResponse of(Category category, String imageUrl) {
        return new CategoryResponse.Builder(category.getId(), category.getName())
                .image(imageUrl).build();
    }

}

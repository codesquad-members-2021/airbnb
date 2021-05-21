package airbnb.domain;

import org.springframework.data.annotation.Id;

public class Image {

    @Id
    private Long id;
    private String url;
    private ImageType imageType;
    private Long cityId;
    private Long roomId;
    private Long categoryId;

    private Image(Builder builder) {
        this.id = builder.id;
        this.url = builder.url;
        this.imageType = builder.imageType;
        this.cityId = builder.cityId;
        this.roomId = builder.roomId;
        this.categoryId = builder.categoryId;
    }

    public static class Builder{
        private final Long id;
        private final String url;

        private ImageType imageType;
        private Long cityId;
        private Long roomId;
        private Long categoryId;

        public Builder(Long id, String url) {
            this.id = id;
            this.url = url;
        }

        public Builder imageType(ImageType imageType){
            this.imageType = imageType;
            return this;
        }

        public Builder cityId(Long cityId){
            this.cityId = cityId;
            return this;
        }

        public Builder roomId(Long roomId){
            this.roomId = roomId;
            return this;
        }

        public Builder categoryId(Long categoryId){
            this.categoryId = categoryId;
            return this;
        }

        public Image build(){
            return new Image(this);
        }
    }

    public Long getId() {
        return id;
    }

    public String getUrl() {
        return url;
    }

    public ImageType getImageType() {
        return imageType;
    }
}

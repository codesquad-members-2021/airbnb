package airbnb.domain;

import org.springframework.data.annotation.Id;

import java.util.List;

public class Category {

    @Id
    private Long id;
    private String name;
    private List<Image> images;

    public Category(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public List<Image> getImages() {
        return images;
    }

    public void setImages(List<Image> images) {
        this.images = images;
    }

    public String findMainImageUrl(){
        Image mainImage = images.stream().filter(image ->ImageType.MAIN.equals(image.getImageType()))
                .findFirst().orElseThrow(NullPointerException::new);
        return mainImage.getUrl();
    }
}

package airbnb.domain;

import org.springframework.data.annotation.Id;

import java.util.List;

public class City {

    @Id
    private Long id;
    private String name;
    private List<Image> images;

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

    public List<Image> getImages() {
        return images;
    }

    public void addImage(Image image){
        images.add(image);
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

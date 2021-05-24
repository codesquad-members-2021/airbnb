package airbnb.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Embedded;

import java.util.List;

public class City {

    @Id
    private Long id;
    private String name;
    private List<Image> images;

    @Embedded.Nullable
    private Location location;

    public City(Long id, String name, Location location) {
        this.id = id;
        this.name = name;
        this.location = location;
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

    public Location getLocation() {
        return location;
    }

    public void addImage(Image image) {
        images.add(image);
    }

    public void setImages(List<Image> images) {
        this.images = images;
    }

    public String findMainImageUrl() {
        Image mainImage = images.stream().filter(image -> ImageType.MAIN.equals(image.getImageType()))
                .findFirst().orElseThrow(NullPointerException::new);
        return mainImage.getUrl();
    }
}

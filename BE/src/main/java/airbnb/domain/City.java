package airbnb.domain;

import org.springframework.data.annotation.Id;

import java.util.Set;

public class City {

    @Id
    private Long id;
    private String name;
    private Set<Image> images;

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

    public Set<Image> getImages() {
        return images;
    }

    public void addImage(Image image){
        images.add(image);
    }

    public String findMainImageUrl(){
        Image mainImage = images.stream().filter(image ->ImageType.MAIN.equals(image.getImageType()))
                .findFirst().orElseThrow(NullPointerException::new);
        return mainImage.getUrl();
    }
}

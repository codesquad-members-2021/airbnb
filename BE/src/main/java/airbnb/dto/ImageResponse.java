package airbnb.dto;

import airbnb.domain.Image;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.List;
import java.util.stream.Collectors;

public class ImageResponse {

    @JsonProperty(value = "mainImage")
    private String mainImageUrl;

    @JsonProperty(value = "detailImage")
    private List<String> detailImageUrls;

    private ImageResponse(String mainImageUrl, List<String> detailImageUrls) {
        this.mainImageUrl = mainImageUrl;
        this.detailImageUrls = detailImageUrls;
    }

    public static ImageResponse of(List<Image> images) {
        List<String> imageUrls = images.stream().map(Image::getUrl).collect(Collectors.toList());
        return new ImageResponse(imageUrls.get(0), imageUrls);
    }
}

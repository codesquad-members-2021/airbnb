package airbnb.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.List;

public class ImageResponse {

    @JsonProperty(value = "mainImage")
    private String mainImageUrl;

    @JsonProperty(value = "detailImage")
    private List<String> detailImageUrls;

    public ImageResponse(String mainImageUrl, List<String> detailImageUrls) {
        this.mainImageUrl = mainImageUrl;
        this.detailImageUrls = detailImageUrls;
    }


}

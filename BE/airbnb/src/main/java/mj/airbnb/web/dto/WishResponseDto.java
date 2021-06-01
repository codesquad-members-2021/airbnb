package mj.airbnb.web.dto;
import mj.airbnb.domain.wish.Wish;

import java.math.BigDecimal;

public class WishResponseDto {
    private String accommodationName;
    private BigDecimal price;
    private String mainImageUrl;

    public WishResponseDto(Wish wish){
        this.accommodationName = wish.getAccommodationName();
        this.price = wish.getPrice();
        this.mainImageUrl = wish.getMainImageUrl();
    }

    public String getAccommodationName() {
        return accommodationName;
    }

    public void setAccommodationName(String accommodationName) {
        this.accommodationName = accommodationName;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getMainImageUrl() {
        return mainImageUrl;
    }

    public void setMainImageUrl(String mainImageUrl) {
        this.mainImageUrl = mainImageUrl;
    }
}

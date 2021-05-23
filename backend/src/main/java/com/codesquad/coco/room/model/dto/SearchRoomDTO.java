package com.codesquad.coco.room.model.dto;

import com.codesquad.coco.room.model.Guest;
import com.codesquad.coco.room.model.Money;

import java.beans.ConstructorProperties;
import java.time.LocalDate;

public class SearchRoomDTO extends SearchPriceDTO {

    private Guest guest;
    private Money priceMin;
    private Money priceMax;

    @ConstructorProperties({"check-in", "check-out", "city-name", "adult", "child", "baby", "price-min", "price-max"})
    public SearchRoomDTO(String checkIn, String checkOut, String cityName,
                         Integer adult, Integer child, Integer baby,
                         Integer priceMin, Integer priceMax) {
        super(checkIn, checkOut, cityName);
        //todo 밑의 정보들이 없을 경우 default 값 설정 // 생성자에서 초기화 로직정도는 괜찮은가?
        this.guest = Guest.guestInfo(adult, child, baby);
        this.priceMin = Money.priceMin(priceMin);
        this.priceMax = Money.priceMax(priceMax);
    }

    public LocalDate getCheckIn() {
        return checkIn;
    }

    public LocalDate getCheckOut() {
        return checkOut;
    }

    public String getCityName() {
        return cityName;
    }

    public Guest getGuest() {
        return guest;
    }

    public int getAdult() {
        return guest.getAdult();
    }

    public int getChild() {
        return guest.getChild();
    }

    public int getBaby() {
        return guest.getBaby();
    }

    public int getPriceMin() {
        return priceMin.getMoney();
    }

    public int getPriceMax() {
        return priceMax.getMoney();
    }

    @Override
    public String toString() {
        return "SearchRoomsDTO{" +
                "checkIn=" + checkIn +
                ", checkOut=" + checkOut +
                ", cityName='" + cityName + '\'' +
                ", guest=" + guest +
                ", priceMin=" + priceMin +
                ", priceMax=" + priceMax +
                '}';
    }
}

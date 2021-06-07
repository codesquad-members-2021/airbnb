package com.enolj.airbnb.domain.join;

import com.enolj.airbnb.domain.house.House;
import com.enolj.airbnb.domain.user.User;
import org.springframework.data.annotation.Id;

import java.time.LocalDate;

public class Join {

    @Id
    private Long id;
    private LocalDate checkIn;
    private LocalDate checkOut;
    private int guest;
    private int kid;
    private int totalCharge;
    private Long userId;
    private Long houseId;

    public Join() {}

    public Join(LocalDate checkIn, LocalDate checkOut, int guest, int kid, int totalCharge) {
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.guest = guest;
        this.kid = kid;
        this.totalCharge = totalCharge;
    }

    public void reservation(User user, House house) {
        this.userId = user.getId();
        this.houseId = house.getId();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDate getCheckIn() {
        return checkIn;
    }

    public void setCheckIn(LocalDate checkIn) {
        this.checkIn = checkIn;
    }

    public LocalDate getCheckOut() {
        return checkOut;
    }

    public void setCheckOut(LocalDate checkOut) {
        this.checkOut = checkOut;
    }

    public int getGuest() {
        return guest;
    }

    public void setGuest(int guest) {
        this.guest = guest;
    }

    public int getKid() {
        return kid;
    }

    public void setKid(int kid) {
        this.kid = kid;
    }

    public int getTotalCharge() {
        return totalCharge;
    }

    public void setTotalCharge(int totalCharge) {
        this.totalCharge = totalCharge;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getHouseId() {
        return houseId;
    }

    public void setHouseId(Long houseId) {
        this.houseId = houseId;
    }

    @Override
    public String toString() {
        return "Join{" +
                "id=" + id +
                ", checkIn=" + checkIn +
                ", checkOut=" + checkOut +
                ", guest=" + guest +
                ", kid=" + kid +
                ", totalCharge=" + totalCharge +
                ", userId=" + userId +
                ", houseId=" + houseId +
                '}';
    }
}

package com.enolj.airbnb.domain.wish;

import com.enolj.airbnb.domain.house.House;
import com.enolj.airbnb.domain.user.User;
import org.springframework.data.annotation.Id;

public class Wish {

    @Id
    private Long id;
    private Long userId;
    private Long houseId;

    public Wish() {}

    public Wish(Long userId, Long houseId) {
        this.userId = userId;
        this.houseId = houseId;
    }

    public static Wish createWish(User user, House house) {
        return new Wish(user.getId(), house.getId());
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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
        return "Wish{" +
                "id=" + id +
                ", userId=" + userId +
                ", houseId=" + houseId +
                '}';
    }
}

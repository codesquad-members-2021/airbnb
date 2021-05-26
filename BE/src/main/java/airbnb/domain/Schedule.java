package airbnb.domain;

import java.time.LocalDate;

public class Schedule {

    private final LocalDate checkIn;
    private final LocalDate checkOut;

    public Schedule(LocalDate checkIn, LocalDate checkOut) {
        this.checkIn = checkIn;
        this.checkOut = checkOut;
    }

    public LocalDate getCheckIn() {
        return checkIn;
    }

    public LocalDate getCheckOut() {
        return checkOut;
    }
}

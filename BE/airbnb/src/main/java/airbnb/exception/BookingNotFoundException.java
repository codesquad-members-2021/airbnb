package airbnb.exception;

public class BookingNotFoundException extends NotFoundException {
    public BookingNotFoundException() {
        super("Booking not found.");
    }
}

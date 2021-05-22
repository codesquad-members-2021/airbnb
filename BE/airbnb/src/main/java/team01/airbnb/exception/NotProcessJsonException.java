package team01.airbnb.exception;

public class NotProcessJsonException extends RuntimeException{

    public NotProcessJsonException() {
        super("JSON 데이터를 가져올 수 없습니다.");
    }

    public NotProcessJsonException(String message) {
        super(message);
    }

    public NotProcessJsonException(Throwable cause) {
        super(cause);
    }
}

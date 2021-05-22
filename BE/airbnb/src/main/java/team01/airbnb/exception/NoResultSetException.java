package team01.airbnb.exception;

public class NoResultSetException extends RuntimeException{

    public NoResultSetException() {
        super("ResultSet 결과를 찾을 수 없습니다.");
    }

    public NoResultSetException(String msg) {
        super(msg);
    }

    public NoResultSetException(Throwable cause) {
        super(cause);
    }
}

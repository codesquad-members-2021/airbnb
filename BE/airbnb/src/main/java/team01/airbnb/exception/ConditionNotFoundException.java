package team01.airbnb.exception;

public class ConditionNotFoundException extends RuntimeException{

    public ConditionNotFoundException() {
        super("컨디션 정보를 찾을 수 없습니다.");
    }

    public ConditionNotFoundException(String msg) {
        super(msg);
    }

    public ConditionNotFoundException(Throwable cause) {
        super(cause);
    }
}

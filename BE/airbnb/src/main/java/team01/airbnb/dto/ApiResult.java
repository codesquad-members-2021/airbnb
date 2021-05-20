package team01.airbnb.dto;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class ApiResult<T> {
    private T data;
    private String error;

    public static ApiResult<?> ok() {
        return new ApiResult("OK", null);
    }

    public static <T> ApiResult<T> succeed(T data) {
        return new ApiResult(data, null);
    }

    public static ApiResult<?> failed(Throwable error) {
        return new ApiResult(null, error.getMessage());
    }

    public static ApiResult<?> failed(String errorMsg) {
        return new ApiResult(null, errorMsg);
    }
}

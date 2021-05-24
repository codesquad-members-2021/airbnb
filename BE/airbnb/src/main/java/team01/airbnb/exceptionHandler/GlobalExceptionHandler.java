package team01.airbnb.exceptionHandler;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import team01.airbnb.dto.ApiResult;
import team01.airbnb.exception.ConditionNotFoundException;
import team01.airbnb.exception.NoResultSetException;
import team01.airbnb.exception.NotProcessJsonException;

@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(NoResultSetException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public ApiResult noResultSetException(NoResultSetException nrse) {
        return ApiResult.failed(nrse);
    }

    @ExceptionHandler(NotProcessJsonException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public ApiResult notProcessJsonException(NotProcessJsonException npje) {
        return ApiResult.failed(npje);
    }

    @ExceptionHandler(ConditionNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public ApiResult conditionNotFoundException(ConditionNotFoundException cnfe) {
        return ApiResult.failed(cnfe);
    }
}

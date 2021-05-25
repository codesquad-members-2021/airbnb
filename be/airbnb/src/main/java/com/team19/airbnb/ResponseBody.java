package com.team19.airbnb;

public class ResponseBody<T> {

    private final T body;

    private ResponseBody(T body) {
        this.body = body;
    }

    public static <T> ResponseBody<T> ok(T body) {
        return new ResponseBody<>(body);
    }

    public static ResponseBody<String> notFound(String message) {
        return new ResponseBody<>(message);
    }
}

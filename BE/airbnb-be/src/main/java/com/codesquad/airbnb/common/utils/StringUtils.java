package com.codesquad.airbnb.common.utils;

public class StringUtils {
    private StringUtils() {
    }

    public static String toStringNullToEmpty(Object o) {
        return o != null ? o.toString() : "";
    }
}

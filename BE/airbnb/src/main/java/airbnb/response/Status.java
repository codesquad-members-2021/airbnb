package airbnb.response;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public enum Status {
    SUCCESS("Successfully registered."),
    FAIL("Duplicate value exists.");

    private final String message;

    public static String message(String name, Status status) {
        return name + " " + status.message;
    }
}

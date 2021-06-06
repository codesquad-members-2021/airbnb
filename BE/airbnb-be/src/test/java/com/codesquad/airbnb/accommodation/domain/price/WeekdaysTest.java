package com.codesquad.airbnb.accommodation.domain.price;

import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

import java.time.LocalDate;
import java.util.stream.Stream;

import static org.assertj.core.api.Assertions.assertThat;

class WeekdaysTest {

    private void validate(LocalDate startDate, LocalDate endDate, int expectedWeekDays, int expectedWeeks) {
        Weekdays weekdays = Weekdays.of(startDate, endDate);

        assertThat(weekdays.weeks()).as("weeks").isEqualTo(expectedWeeks);
        assertThat(weekdays.days()).as("weekdays").isEqualTo(expectedWeekDays);
    }

    @ParameterizedTest
    @MethodSource("startOnFridayProvider")
    void startOnFriday(@SuppressWarnings("unused") String description, LocalDate startDate, LocalDate endDate, int expectedWeekDays, int expectedWeeks) {
        validate(startDate, endDate, expectedWeekDays, expectedWeeks);
    }

    @SuppressWarnings("unused")
    static Stream<Arguments> startOnFridayProvider() {
        return Stream.of(
                Arguments.of("금토",
                        LocalDate.of(2021, 6, 4),
                        LocalDate.of(2021, 6, 5),
                        0,
                        1
                ), Arguments.of("금토일",
                        LocalDate.of(2021, 6, 4),
                        LocalDate.of(2021, 6, 6),
                        0,
                        1
                ), Arguments.of("금토일월(3일) - 금요일 하루 빼고 월요일 하루 추가",
                        LocalDate.of(2021, 6, 4),
                        LocalDate.of(2021, 6, 7),
                        1,
                        1
                ), Arguments.of("금~금",
                        LocalDate.of(2021, 6, 4),
                        LocalDate.of(2021, 6, 11),
                        5,
                        1
                ), Arguments.of("금~토",
                        LocalDate.of(2021, 6, 4),
                        LocalDate.of(2021, 6, 12),
                        5,
                        2
                ), Arguments.of("금~일",
                        LocalDate.of(2021, 6, 4),
                        LocalDate.of(2021, 6, 13),
                        5,
                        2
                ), Arguments.of("금~월(2주차)",
                        LocalDate.of(2021, 6, 4),
                        LocalDate.of(2021, 6, 14),
                        6,
                        2
                )
        );
    }

    @ParameterizedTest
    @MethodSource("startOnSaturdayProvider")
    void startOnSaturday(@SuppressWarnings("unused") String description, LocalDate startDate, LocalDate endDate, int expectedWeekDays, int expectedWeeks) {
        validate(startDate, endDate, expectedWeekDays, expectedWeeks);
    }

    @SuppressWarnings("unused")
    static Stream<Arguments> startOnSaturdayProvider() {
        return Stream.of(
                Arguments.of("토일",
                        LocalDate.of(2021, 6, 5),
                        LocalDate.of(2021, 6, 6),
                        1,
                        1
                ), Arguments.of("토일월 - 월요일 있으니 하루 추가돼야함.",
                        LocalDate.of(2021, 6, 5),
                        LocalDate.of(2021, 6, 7),
                        1,
                        1
                ), Arguments.of("토~토",
                        LocalDate.of(2021, 6, 5),
                        LocalDate.of(2021, 6, 12),
                        5,
                        2
                ), Arguments.of("토~일",
                        LocalDate.of(2021, 6, 5),
                        LocalDate.of(2021, 6, 13),
                        5,
                        2
                ), Arguments.of("토~월(2주차)",
                        LocalDate.of(2021, 6, 5),
                        LocalDate.of(2021, 6, 14),
                        6,
                        2
                )
        );
    }

    @ParameterizedTest
    @MethodSource("startOnSundayProvider")
    void startOnSunday(@SuppressWarnings("unused") String description, LocalDate startDate, LocalDate endDate, int expectedWeekDays, int expectedWeeks) {
        validate(startDate, endDate, expectedWeekDays, expectedWeeks);
    }

    @SuppressWarnings("unused")
    static Stream<Arguments> startOnSundayProvider() {
        return Stream.of(
                Arguments.of("일월 - 월요일추가해야함",
                        LocalDate.of(2021, 6, 6),
                        LocalDate.of(2021, 6, 7),
                        1,
                        0
                ), Arguments.of("일월 - 월요일추가",
                        LocalDate.of(2021, 6, 6),
                        LocalDate.of(2021, 6, 7),
                        1,
                        0
                ), Arguments.of("일~금",
                        LocalDate.of(2021, 6, 6),
                        LocalDate.of(2021, 6, 11),
                        5,
                        0
                ), Arguments.of("일~토",
                        LocalDate.of(2021, 6, 6),
                        LocalDate.of(2021, 6, 12),
                        5,
                        1
                ), Arguments.of("일~일(2주차)",
                        LocalDate.of(2021, 6, 6),
                        LocalDate.of(2021, 6, 13),
                        5,
                        1
                ), Arguments.of("일~일(2주차)",
                        LocalDate.of(2021, 6, 6),
                        LocalDate.of(2021, 6, 14),
                        6,
                        1
                )
        );
    }

    @ParameterizedTest
    @MethodSource("startOnMondayProvider")
    void startOnMonday(@SuppressWarnings("unused") String description, LocalDate startDate, LocalDate endDate, int expectedWeekDays, int expectedWeeks) {
        validate(startDate, endDate, expectedWeekDays, expectedWeeks);
    }

    @SuppressWarnings("unused")
    static Stream<Arguments> startOnMondayProvider() {
        return Stream.of(
                Arguments.of("월화",
                        LocalDate.of(2021, 6, 7),
                        LocalDate.of(2021, 6, 8),
                        1,
                        0
                ), Arguments.of("월~금",
                        LocalDate.of(2021, 6, 7),
                        LocalDate.of(2021, 6, 11),
                        4,
                        0
                ), Arguments.of("월~토",
                        LocalDate.of(2021, 6, 7),
                        LocalDate.of(2021, 6, 12),
                        4,
                        1
                ), Arguments.of("월~일",
                        LocalDate.of(2021, 6, 7),
                        LocalDate.of(2021, 6, 13),
                        4,
                        1
                ), Arguments.of("월~월(2주차)",
                        LocalDate.of(2021, 6, 7),
                        LocalDate.of(2021, 6, 14),
                        5,
                        1
                )
        );
    }
}

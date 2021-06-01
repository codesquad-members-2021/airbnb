package mj.airbnb.util;

import mj.airbnb.domain.accommodation.Accommodation;
import mj.airbnb.domain.reservation.Reservation;

public class RowMapper {

    public static final org.springframework.jdbc.core.RowMapper<Accommodation> ACCOMMODATION_ROW_MAPPER = (rs, rowNum) -> {
        Accommodation accommodation = new Accommodation();
        accommodation.setName(rs.getString("name"));
        accommodation.setMaxNumOfPeople(rs.getInt("max_num_of_people"));
        accommodation.setType(rs.getString("type"));
        accommodation.setNumOfBed(rs.getInt("num_of_bed"));
        accommodation.setNumOfBathroom(rs.getInt("num_of_bathroom"));
        accommodation.setPrice(rs.getBigDecimal("price"));
        accommodation.setAddress(rs.getString("address"));
        accommodation.setMainImageUrl(rs.getString("url"));

        return accommodation;
    };

    public static final org.springframework.jdbc.core.RowMapper<Accommodation> ACCOMMODATION_DETAIL_ROW_MAPPER = (rs, rowNum) -> {
        Accommodation accommodation = new Accommodation();
        accommodation.setName(rs.getString("name"));
        accommodation.setMaxNumOfPeople(rs.getInt("max_num_of_people"));
        accommodation.setType(rs.getString("type"));
        accommodation.setNumOfBed(rs.getInt("num_of_bed"));
        accommodation.setNumOfBathroom(rs.getInt("num_of_bathroom"));
        accommodation.setPrice(rs.getBigDecimal("price"));
        accommodation.setAddress(rs.getString("address"));
        accommodation.setHostName(rs.getString("host_name"));
        accommodation.setDescription(rs.getString("description"));

        return accommodation;
    };

    public static final org.springframework.jdbc.core.RowMapper<Accommodation> ADDRESS_ROW_MAPPER = (rs, rowNum) -> {
        Accommodation accommodation = new Accommodation();
        accommodation.setAddress(rs.getString("address"));

        return accommodation;
    };

    public static final org.springframework.jdbc.core.RowMapper<String> IMAGE_ROW_MAPPER = (rs, rowNum) -> rs.getString("url");



    public static final org.springframework.jdbc.core.RowMapper<Reservation> RESERVATION_ROW_MAPPER = (rs, rowNum) -> {
        Reservation reservation = new Reservation();
        reservation.setCheckInDate(rs.getDate("check_in_date").toLocalDate());
        reservation.setCheckOutDate(rs.getDate("check_out_date").toLocalDate());
        reservation.setAccommodationName(rs.getString("name"));
        reservation.setAccommodationAddress(rs.getString("address"));
        reservation.setAccommodationDescription(rs.getString("description"));
        reservation.setAccommodationMainImageUrl(rs.getString("url"));

        return reservation;
    };
}

package com.codesquad.coco.user;

import com.codesquad.coco.user.model.dto.ReservationDTO;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import static com.codesquad.coco.utils.sql.ReservationSQLKt.INSERT_RESERVATION;

@Component
public class ReservationDAO {

    private NamedParameterJdbcTemplate template;

    public ReservationDAO(NamedParameterJdbcTemplate template) {
        this.template = template;
    }

    public void reservation(Long roomId, Long userId, ReservationDTO reservationDTO) {
        MapSqlParameterSource parameter = new MapSqlParameterSource()
                .addValue("room_id", roomId)
                .addValue("check_in", reservationDTO.getCheckIn())
                .addValue("check_out", reservationDTO.getCheckOut())
                .addValue("total_price", reservationDTO.getTotalPrice())
                .addValue("adult", reservationDTO.getAdult())
                .addValue("child", reservationDTO.getChild())
                .addValue("baby", reservationDTO.getBaby())
                .addValue("user_id", userId);
        //todo : oauth 완료하고 userId도 넣어야함
        template.update(INSERT_RESERVATION,parameter);
    }

}

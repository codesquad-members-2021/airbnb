package com.codesquad.coco.utils.sql;

//todo user 추가
const val INSERT_RESERVATION : String = """
insert into reservation (room_id, user_id, adult, child, baby, check_in, check_out, total_price)
values (:room_id, null, :adult, :child, :baby, :check_in, :check_out, :total_price);
"""
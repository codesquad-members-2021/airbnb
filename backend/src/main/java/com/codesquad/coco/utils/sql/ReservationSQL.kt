package com.codesquad.coco.utils.sql;

//todo user 추가
const val INSERT_RESERVATION: String = """
insert into reservation (room_id, user_id, adult, child, baby, check_in, check_out, total_price,status)
values (:room_id, :user_id, :adult, :child, :baby, :check_in, :check_out, :total_price,:status);
"""

const val DELETE_RESERVATION: String = """

update reservation 
set status = :status 
where room_id = :room_id
and user_id =:user_id 
and id = :reservation_id;

"""
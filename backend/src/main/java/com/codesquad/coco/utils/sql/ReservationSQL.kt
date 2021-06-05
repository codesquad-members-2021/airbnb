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

const val FIND_ALL_RESERVATION_BY_ROOM_ID: String = """
select rv.id as rv_id, rv.user_id as rv_user_id, rv.adult as rv_adult, rv.child as rv_child,
 rv.baby as rv_baby, rv.check_in as rv_check_in, rv.check_out as rv_check_out,rv.total_price as rv_total_price
from reservation rv
where rv.room_id = :room_id
and rv.status = 'RESERVED';
"""
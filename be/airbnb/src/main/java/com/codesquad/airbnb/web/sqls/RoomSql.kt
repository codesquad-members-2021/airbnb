package com.codesquad.airbnb.web.sqls

const val SAVE_ROOM: String = """
insert into room(location_id, name, rating, guest_capacity, point, description)
values (:location_id, :name, :rating, :guest_capacity, point(:x, :y), :description);
"""

const val FIND_ROOM: String = """
select id, location_id, name, rating, guest_capacity, st_x(point), st_y(point), description
from room
where id = :id;
"""

package com.codesquad.airbnb.web.sqls

const val SAVE_ROOM: String = """
insert into room(location_id, name, rating, guest_capacity, point, description)
values (:location_id, :name, :rating, :guest_capacity, point(:x, :y), :description);
"""

const val SAVE_PRICE_POLICY: String = """
insert into room_price (room_id, service_fee, accomodation_tax, clean_up_cost, price_per_day, weekly_discount)
values (:room_id, :service_fee, :accomodation_tax, :clean_up_cost, :price_per_day, :weekly_discount);
"""

const val FIND_ROOM: String = """
select r.id, r.location_id, r.name, r.rating, r.guest_capacity, st_x(r.point), st_y(r.point), r.description,
rp.accomodation_tax, rp.clean_up_cost, rp.price_per_day, rp.service_fee, rp.weekly_discount
from room r join room_price rp on r.id = rp.room_id
where r.id = :id;
"""

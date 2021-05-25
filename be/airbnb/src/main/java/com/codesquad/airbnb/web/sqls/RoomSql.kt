package com.codesquad.airbnb.web.sqls

const val SAVE_ROOM: String = """
insert into room(location_id, name, rating, guest_capacity, point, description, bathroom_type, bedroom_type, bed_count, amenity)
values (:location_id, :name, :rating, :guest_capacity, point(:x, :y), :description, :bathroom_type, :bedroom_type, :bed_count, :amenity);
"""

const val SAVE_PRICE_POLICY: String = """
insert into room_price (room_id, service_fee, accomodation_tax, clean_up_cost, price_per_day, weekly_discount)
values (:room_id, :service_fee, :accomodation_tax, :clean_up_cost, :price_per_day, :weekly_discount);
"""

const val FIND_ROOM: String = """
select r.id, r.location_id, r.name, r.rating, r.guest_capacity, st_x(r.point), st_y(r.point), r.description, r.bathroom_type, r.bedroom_type, r.bed_count, r.amenity,
rp.accomodation_tax, rp.clean_up_cost, rp.price_per_day, rp.service_fee, rp.weekly_discount
from room r join room_price rp on r.id = rp.room_id
where r.id = :id;
"""

const val SEARCH_ROOMS_BY_LOCATION = """
select r.id, r.location_id, r.name, r.rating, r.guest_capacity, st_x(r.point), st_y(r.point), r.description, r.bathroom_type, r.bedroom_type, r.bed_count, r.amenity,
       rp.accomodation_tax, rp.clean_up_cost, rp.price_per_day, rp.service_fee, rp.weekly_discount
from room r
         join room_price rp on r.id = rp.room_id,
     (
         with recursive cte (id, parent_id, type) as (
             select id, parent_id, type
             from location
             where location.name = :location_name
             union
             select recv_l.id, recv_l.parent_id, recv_l.type
             from location recv_l,
                  cte c
             where recv_l.parent_id = c.id
         )
         select id
         from cte
         where type = 'NEIGHBORHOOD'
            or type = 'VILLAGE') target_location
where r.location_id in (target_location.id)
"""

const val FILTERING_PRICE: String = """
and (((price_per_day + service_fee + clean_up_cost) * :stay_day) * (100 - rp.weekly_discount * floor(:stay_day/7)) / 100) between :cost_minimum and :cost_maximum
"""

const val FILTERING_GUEST_COUNT: String = """
and r.guest_capacity >= :guest_count
"""

const val FILTERING_DATE: String = """
and (
    select if(count(id) = 0, true, false) reservationable
    from (select *
          from reservation
          where room_id = (select id from room where id = r.id)
         ) reservation
    where (:stay_start between reservation.checkin_date_time and reservation.checkout_date_time
        and
           :stay_end between reservation.checkin_date_time and reservation.checkout_date_time)
)
"""
